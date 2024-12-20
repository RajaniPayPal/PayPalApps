﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    App Shop
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Styles/StyleValidation.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #IndexActive,
        #HomeActive
        {
            color: #555555;
            text-decoration: none;
            box-shadow: inset 0px 3px 8px rgba(0,0,0,0.125);
            background-color: rgb(229, 229, 229);
        }  
    </style>
    <div class="container" id="content">
        <div class="row app-row">
            <div class="span2">
                <div class="image">
	            <img alt="Android" src="../../Images/Android.png" />
                </div>
                <div class="details">
                    11$ - <a href="../PlaceOrders/PlaceOrders?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Android+App" class="btn btn-small">Buy</a>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <img alt="Angular" src="../../Images/Angular.png"  />
                </div>
                <div class="details">
                    12$ - <a href="../PlaceOrders/PlaceOrders?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Angular+App" class="btn btn-small">Buy</a>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <img alt="AWS" src="../../Images/AWS.png" />
                </div>
                <div class="details">
                    13$ - <a href="../PlaceOrders/PlaceOrders?order%5Bamount%5D=11&amp;order%5Bdescription%5D=AWS+App" class="btn btn-small">Buy</a>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <img alt="Azure" src="../../Images/Azure.png" />
                </div>
                <div class="details">
                    14$ - <a href="../PlaceOrders/PlaceOrders?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Azure+App" class="btn btn-small">Buy</a>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <img alt="Clojure" src="../../Images/Clojure.png" />
                </div>
                <div class="details">
                    15$ - <a href="../PlaceOrders/PlaceOrders?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Clojure+App" class="btn btn-small">Buy</a>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <img alt="CS.NET" src="../../Images/CS.NET.png" />
                </div>
                <div class="details">
                    16$ - <a href="../PlaceOrders/PlaceOrders?order%5Bamount%5D=11&amp;order%5Bdescription%5D=.NET+App" class="btn btn-small">Buy</a>
                </div>
            </div>
        </div>
        <div class="row app-row">
            <div class="span2">
                <div class="image">
                    <img alt="iOS" src="../../Images/iOS.png" />
                </div>
                <div class="details">
                    21$ - <a href="../PlaceOrders/PlaceOrders?order%5Bamount%5D=11&amp;order%5Bdescription%5D=iOS+App" class="btn btn-small">Buy</a>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <img alt="Java" src="../../Images/Java.png" />
                </div>
                <div class="details">
                    22$ - <a href="../PlaceOrders/PlaceOrders?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Java+App" class="btn btn-small">Buy</a>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <img alt="JS" src="../../Images/JS.png" />
                </div>
                <div class="details">
                    23$ - <a href="../PlaceOrders/PlaceOrders?order%5Bamount%5D=11&amp;order%5Bdescription%5D=JS+App" class="btn btn-small">Buy</a>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <img alt="Kotlin" src="../../Images/Kotlin.png" />
                </div>
                <div class="details">
                    24$ - <a href="../PlaceOrders/PlaceOrders?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Kotlin+App" class="btn btn-small">Buy</a>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <img alt="MATLAB" src="../../Images/MATLAB.png" />
                </div>
                <div class="details">
                    25$ - <a href="../PlaceOrders/PlaceOrders?order%5Bamount%5D=11&amp;order%5Bdescription%5D=MATLAB+App" class="btn btn-small">Buy</a>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <img alt="Node.js" src="../../Images/Node.js.png" />
                </div>
                <div class="details">
                    26$ - <a href="../PlaceOrders/PlaceOrders?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Node.js+App" class="btn btn-small">Buy</a>
                </div>
            </div>
        </div>
        <div class="row app-row">
            <div class="span2">
                <div class="image">
                    <img alt="Perl" src="../../Images/Perl.png" />
                </div>
                <div class="details">
                    31$ - <a href="../PlaceOrders/PlaceOrders?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Perl+App" class="btn btn-small">Buy</a>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <img alt="Python" src="../../Images/Python.png" />
                </div>
                <div class="details">
                    32$ - <a href="../PlaceOrders/PlaceOrders?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Python+App" class="btn btn-small">Buy</a>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <img alt="R" src="../../Images/R.png" />
                </div>
                <div class="details">
                    33$ - <a href="../PlaceOrders/PlaceOrders?order%5Bamount%5D=11&amp;order%5Bdescription%5D=R+App" class="btn btn-small">Buy</a>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <img alt="react" src="../../Images/React.png" />
                </div>
                <div class="details">
                    34$ - <a href="../PlaceOrders/PlaceOrders?order%5Bamount%5D=11&amp;order%5Bdescription%5D=React+App" class="btn btn-small">Buy</a>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <img alt="Ruby" src="../../Images/Ruby.png" />
                </div>
                <div class="details">
                    35$ - <a href="../PlaceOrders/PlaceOrders?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Ruby+App" class="btn btn-small">Buy</a>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <img alt="Scala" src="../../Images/Scala.png" />
                </div>
                <div class="details">
                    36$ - <a href="../PlaceOrders/PlaceOrders?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Scala+App" class="btn btn-small">Buy</a>
                </div>
            </div>
        </div>
        <br />
        <br />
        <div class="row">
            <div class="span6 offset3">
                <p>This is a sample application which showcases the new PayPal REST APIs. The App uses mock data to demonstrate how you can use the REST APIs for the following operations:</p>
                <ul>
                    <li>Saving Credit Card information with PayPal for later use</li>
                    <li>Making Payments using a saved Credit Card</li>
                    <li>Making Payments using PayPal</li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
