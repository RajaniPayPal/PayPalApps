﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navigator.ascx.cs" Inherits="ASP.NET.Navigator" %>
<link href="/Styles/StyleSheet.css" rel="Stylesheet" type="text/css" />
<div class="navbar navbar-static-top">
    <div class="navbar-inner">
        <div class="container">
            <% if (HttpContext.Current.User.Identity.IsAuthenticated)
               { %>
            <a class="brand">App Shop</a>
            <div class="nav-collapse">
                <ul class="nav">
                    <li id="liHome">
                        <asp:HyperLink ID="HyperLinkHome" runat="server" NavigateUrl="~/Default.aspx" Text="Home"></asp:HyperLink></li>
                    <li id="liOrders">
                        <asp:HyperLink ID="HyperLinkOrders" runat="server" NavigateUrl="~/Orders/Orders.aspx"
                            Text="Orders"></asp:HyperLink></li>
                </ul>
            </div>
            <ul class="nav pull-right">
                <li id="liProfile">
                    <asp:HyperLink ID="HyperLinkProfile" runat="server" NavigateUrl="~/Account/Profile.aspx"
                        Text="Profile"></asp:HyperLink></li>
                <li id="liSignOut">
                    <asp:HyperLink ID="HyperLinkSignOut" runat="server" NavigateUrl="~/Account/SignOut.aspx"
                        Text="Sign out"></asp:HyperLink></li>
            </ul>
            <div class="nav pull-right">Welcome <strong><%= HttpContext.Current.User.Identity.Name %></strong>!</div>
            <% }
               else
               { %>
            <a class="brand">App Shop</a>
            <div class="nav-collapse">
                <ul class="nav">
                    <li id="liDefault">
                        <asp:HyperLink ID="HyperLinkDefault" runat="server" NavigateUrl="~/Default.aspx"
                            Text="Home"></asp:HyperLink></li>
                </ul>
            </div>
            <ul class="nav pull-right">
                <li id="liSignIn">
                    <asp:HyperLink ID="HyperLinkSignIn" runat="server" NavigateUrl="~/Account/SignIn.aspx"
                        Text="Sign in"></asp:HyperLink></li>
                <li id="liSignUp">
                    <asp:HyperLink ID="HyperLinkSignUp" runat="server" NavigateUrl="~/Account/SignUp.aspx"
                        Text="Sign up"></asp:HyperLink></li>
            </ul>
            <% } %>
        </div>
    </div>
</div>
