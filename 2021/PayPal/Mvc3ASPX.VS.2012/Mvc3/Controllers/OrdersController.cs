﻿using PayPal;
using PayPal.Api.Payments;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SQLite;
using System.Linq;
using System.Text;
using System.Web.Mvc;

namespace Mvc3
{
    public class OrdersController : Controller
    {
        #region Data

        private DataTable GetUser(string email)
        {
            DataTable datTable = null;
            StringBuilder selectQuery = new StringBuilder();
            selectQuery.Append("SELECT ");
            selectQuery.Append("id, ");
            selectQuery.Append("email, ");
            selectQuery.Append("encrypted_password, ");
            selectQuery.Append("sign_in_count, ");
            selectQuery.Append("credit_card_id ");
            selectQuery.Append("FROM users ");
            selectQuery.Append("WHERE email = @email;");
            using (SQLiteCommand commandSQLite = new SQLiteCommand(selectQuery.ToString()))
            {
                commandSQLite.Parameters.AddWithValue("@email", email);
                DataAccessLayer dataAccessObject = new DataAccessLayer();
                datTable = dataAccessObject.Select(commandSQLite);
            }
            return datTable;
        }

        private DataTable GetOrders(int userId)
        {
            DataTable datTable = null;
            StringBuilder selectQuery = new StringBuilder();
            selectQuery.Append("SELECT ");
            selectQuery.Append("id, ");
            selectQuery.Append("user_id, ");
            selectQuery.Append("payment_id, ");
            selectQuery.Append("state, ");
            selectQuery.Append("amount, ");
            selectQuery.Append("description, ");
            selectQuery.Append("created_at, ");
            selectQuery.Append("updated_at ");
            selectQuery.Append("FROM orders ");
            selectQuery.Append("WHERE user_id = @user_id ");
            selectQuery.Append("ORDER BY updated_at DESC, id DESC;");
            using (SQLiteCommand commandSQLite = new SQLiteCommand(selectQuery.ToString()))
            {
                commandSQLite.Parameters.AddWithValue("@user_id", userId);
                DataAccessLayer dataAccessObject = new DataAccessLayer();
                datTable = dataAccessObject.Select(commandSQLite);
            }
            return datTable;
        }

        private DataTable GetPaymentId(string orderId)
        {
            DataTable datTable = null;
            string selectQuery = "SELECT payment_id FROM orders WHERE id = @id;";
            using (SQLiteCommand commandSQLite = new SQLiteCommand(selectQuery))
            {
                commandSQLite.Parameters.AddWithValue("@id", orderId);
                DataAccessLayer dataAccessObject = new DataAccessLayer();
                datTable = dataAccessObject.Select(commandSQLite);
            }
            return datTable;
        }

        private int GetSignedInUserId(string email)
        {
            int userId = 0;
            DataTable datTable = GetUser(email);
            if (datTable != null && datTable.Rows.Count > 0)
            {
                var distinctRows = (from DataRow dRow in datTable.Rows
                                    where dRow.Field<string>("email") == email
                                    select new { column1 = dRow["id"] }).Distinct();
                if (distinctRows != null)
                {
                    foreach (var row in distinctRows)
                    {
                        userId = Convert.ToInt32(row.column1);
                        break;
                    }
                }
            }
            return userId;
        }

        private string GetOrdersPaymentId(string orderId)
        {
            string paymentId = string.Empty;
            DataTable datTable = GetPaymentId(orderId);
            if (datTable != null && datTable.Rows.Count > 0)
            {
                var distinctRows = (from DataRow dRow in datTable.Rows
                                    select new { column1 = dRow["payment_id"] }).Distinct();
                if (distinctRows != null)
                {
                    foreach (var row in distinctRows)
                    {
                        paymentId = Convert.ToString(row.column1);
                        break;
                    }
                }
            }
            return paymentId;
        }

        private bool Update(int orderId, string state, string updatedAt)
        {
            bool isSuccess = false;
            int rowsAffected = 0;
            StringBuilder updateQuery = new StringBuilder();
            updateQuery.Append("UPDATE orders ");
            updateQuery.Append("SET ");
            updateQuery.Append("state = @state, ");
            updateQuery.Append("updated_at = @updated_at ");
            updateQuery.Append("WHERE ");
            updateQuery.Append("id = @id;");
            using (SQLiteCommand commandSQLite = new SQLiteCommand(updateQuery.ToString()))
            {
                commandSQLite.Parameters.AddWithValue("@state", state);
                commandSQLite.Parameters.AddWithValue("@updated_at", updatedAt);
                commandSQLite.Parameters.AddWithValue("@id", orderId);
                DataAccessLayer dataAccessObject = new DataAccessLayer();
                rowsAffected = dataAccessObject.Execute(commandSQLite);
            }
            if (rowsAffected > 0)
            {
                isSuccess = true;
            }
            return isSuccess;
        }
        #endregion

        #region PayPal

        private string AccessToken
        {
            get
            {
                string token = new OAuthTokenCredential
                                (
                                   "EBWKjlELKMYqRNQ6sYvFo64FtaRLRR5BdHEESmha49TM",
                                    "EO422dn3gQLgDbuwqTjzrFgFtaRLRR5BdHEESmha49TM",
                                    Configuration.GetConfiguration()
                                ).GetAccessToken();
                return token;
            }
        }

        private APIContext Api
        {
            get
            {
                APIContext context = new APIContext(AccessToken);
                context.Config = Configuration.GetConfiguration();
                return context;
            }
        }

        #endregion
        
        #region ActionResult

        //
        // GET: /Orders/ 
        [Authorize]
        public ActionResult Orders()
        {
            var model = new OrdersCollection();
            IEnumerable<Order> modelIEnumerable = null;
            if (Request.QueryString["OrderId"] != null && Request.QueryString["Success"] != null)
            {
                var orderId = Request.QueryString["OrderId"];
                var payerId = Request.QueryString["PayerId"];
                var isSuccess = Convert.ToBoolean(Request.QueryString["Success"]);
                if (isSuccess)
                {
                    PaymentExecution payExecution = new PaymentExecution();
                    payExecution.payer_id = payerId;
                    Payment paymnt = new Payment();
                    paymnt.id = GetOrdersPaymentId(orderId);
                    Payment pay = null;
                    try
                    {
                        pay = paymnt.Execute(Api, payExecution);
                        if (pay != null && pay.state.Trim().ToLower().Equals("approved"))
                        {
                            var state = pay.state.Trim();
                            var updatedAtDateTime = Convert.ToDateTime(pay.create_time);
                            var updatedAt = updatedAtDateTime.ToString("yyyy-MM-dd hh:mm:ss.FFFFF");
                            var ordId = Convert.ToInt32(orderId);
                            bool isUpdated = Update(ordId, state, updatedAt);
                        }
                    }
                    catch (Exception ex)
                    {
                        ModelState.AddModelError(string.Empty, ex.Message);
                    }
                }
                else
                {
                    orderId = Request.QueryString["OrderId"];
                    var updatedAtDateTime = DateTime.Now;
                    var updatedAt = updatedAtDateTime.ToString("yyyy-MM-dd hh:mm:ss.FFFFF");
                    bool isUpdated = Update(Convert.ToInt32(orderId), "cancelled", updatedAt);
                }
            }

            var email = User.Identity.Name.Trim();
            int userId = GetSignedInUserId(email);
            DataTable datTable = GetOrders(userId);
            if (datTable != null && datTable.Rows.Count > 0)
            {
                model.Orders = (from DataRow row in datTable.Rows
                                select new Order
                                {
                                    OrderId = Convert.ToInt32(row["id"]),
                                    UserId = Convert.ToInt32(row["user_id"]),
                                    PaymentId = row["payment_id"].ToString(),
                                    State = row["state"].ToString(),
                                    AmountInUSD = row["amount"].ToString(),
                                    Description = row["description"].ToString(),
                                    CreatedDateTime = Convert.ToDateTime(row["created_at"]),
                                    UpdatedDateTime = Convert.ToDateTime(row["updated_at"]),

                                }).ToList();

                modelIEnumerable = model.Orders;
            }
            return View(modelIEnumerable);
        }

        #endregion
    }
}
