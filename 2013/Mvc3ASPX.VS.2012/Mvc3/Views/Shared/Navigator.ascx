<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%
    if (Request.IsAuthenticated)
    {
%>
<div class="navbar navbar-static-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="brand">App Shop</a>
            <div class="nav-collapse">
                <ul class="nav">
                    <li id="IndexActive"><%: Html.ActionLink("Home", "Index", "Home")%></li>
                    <li id="OrdersActive"><%: Html.ActionLink("Orders", "Orders", "Orders")%></li>
                </ul>
            </div>
            <ul class="nav pull-right">
                <li id="ProfileActive"><%: Html.ActionLink("Profile", "Profile", "Account") %></li>
                <li id="SignOutActive"><%: Html.ActionLink("Sign out", "SignOut", "Account") %></li>
            </ul>
            <div class="nav pull-right">Welcome <strong><%: Page.User.Identity.Name %></strong>!</div>
        </div>
    </div>
</div>
<%
    }
    else
    {
%>
<div class="navbar navbar-static-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="brand">App Shop</a>
            <div class="nav-collapse">
                <ul class="nav">
                    <li id="HomeActive"><%: Html.ActionLink("Home", "Index", "Home")%></li>
                </ul>
            </div>
            <ul class="nav pull-right">
                <li id="SignInActive"><%: Html.ActionLink("Sign in", "SignIn", "Account") %></li>
                <li id="SignUpActive"><%: Html.ActionLink("Sign up", "SignUp", "Account") %></li>
            </ul>
        </div>
    </div>
</div>
<%
    }
%>