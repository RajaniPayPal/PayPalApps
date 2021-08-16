<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="ASP.NET._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        #liHome, #liDefault
        {
            color: #555555;
            text-decoration: none;
            box-shadow: inset 0px 3px 8px rgba(0,0,0,0.125);
            background-color: rgb(229, 229, 229);
        }
    </style>
    <script type="text/javascript" src="../Scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function () {
        $("#MainContent_ButtonAlertMessage").click(function () {
            $("#MainContent_divAlertMessage").hide();
            return false;
        });
    });

    // For Visual Studio 2008
    $(document).ready(function () {
        $("#ctl00_MainContent_ButtonAlertMessage").click(function () {
        $("#ctl00_MainContent_divAlertMessage").hide();
        return false;
        });
    });
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="container" id="content">
        <div id="divAlertMessage" runat="server" visible="false" class="alert fade in alert-success">
            <asp:Button runat="server" ID="ButtonAlertMessage" CssClass="close" Text="X" />
            <asp:Label runat="server" ID="LabelAlertMessage"></asp:Label>
        </div>
        <div class="row app-row">
            <div class="span2">
                <div class="image">
                    <asp:Image ID="Android" runat="server" ImageUrl="Images/Android.png" />
                </div>
                <div class="details">
                    11$ -
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PlaceOrders/PlaceOrders.aspx?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Android+App"
                        CssClass="btn btn-small" Text="Buy">
                    </asp:HyperLink>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <asp:Image ID="Angular" runat="server" ImageUrl="Images/Angular.png" />
                </div>
                <div class="details">
                    12$ -
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/PlaceOrders/PlaceOrders.aspx?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Angular+App"
                        CssClass="btn btn-small" Text="Buy">
                    </asp:HyperLink>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <asp:Image ID="AWS" runat="server" ImageUrl="Images/AWS.png" />
                </div>
                <div class="details">
                    13$ -
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/PlaceOrders/PlaceOrders.aspx?order%5Bamount%5D=11&amp;order%5Bdescription%5D=AWS+App"
                        CssClass="btn btn-small" Text="Buy">
                    </asp:HyperLink>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <asp:Image ID="Azure" runat="server" ImageUrl="Images/Azure.png" />
                </div>
                <div class="details">
                    14$ -
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/PlaceOrders/PlaceOrders.aspx?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Azure+App"
                        CssClass="btn btn-small" Text="Buy">
                    </asp:HyperLink>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <asp:Image ID="Clojure" runat="server" ImageUrl="Images/Clojure.png" />
                </div>
                <div class="details">
                    15$ -
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/PlaceOrders/PlaceOrders.aspx?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Clojure+App"
                        CssClass="btn btn-small" Text="Buy">
                    </asp:HyperLink>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <asp:Image ID="CSNET" runat="server" ImageUrl="Images/CS.NET.png" />
                </div>
                <div class="details">
                    16$ -
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/PlaceOrders/PlaceOrders.aspx?order%5Bamount%5D=11&amp;order%5Bdescription%5D=.NET+App"
                        CssClass="btn btn-small" Text="Buy">
                    </asp:HyperLink>
                </div>
            </div>
        </div>
        <div class="row app-row">
            <div class="span2">
                <div class="image">
                    <asp:Image ID="iOS" runat="server" ImageUrl="Images/iOS.png" />
                </div>
                <div class="details">
                    21$ -
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/PlaceOrders/PlaceOrders.aspx?order%5Bamount%5D=11&amp;order%5Bdescription%5D=iOS+App"
                        CssClass="btn btn-small" Text="Buy">
                    </asp:HyperLink>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <asp:Image ID="Java" runat="server" ImageUrl="Images/Java.png" />
                </div>
                <div class="details">
                    22$ -
                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/PlaceOrders/PlaceOrders.aspx?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Java+App"
                        CssClass="btn btn-small" Text="Buy">
                    </asp:HyperLink>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <asp:Image ID="JS" runat="server" ImageUrl="Images/JS.png" />
                </div>
                <div class="details">
                    23$ -
                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/PlaceOrders/PlaceOrders.aspx?order%5Bamount%5D=11&amp;order%5Bdescription%5D=JS+App"
                        CssClass="btn btn-small" Text="Buy">
                    </asp:HyperLink>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <asp:Image ID="Kotlin" runat="server" ImageUrl="Images/Kotlin.png" />
                </div>
                <div class="details">
                    24$ -
                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/PlaceOrders/PlaceOrders.aspx?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Kotlin+App"
                        CssClass="btn btn-small" Text="Buy">
                    </asp:HyperLink>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <asp:Image ID="MATLAB" runat="server" ImageUrl="Images/MATLAB.png" />
                </div>
                <div class="details">
                    25$ -
                    <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/PlaceOrders/PlaceOrders.aspx?order%5Bamount%5D=11&amp;order%5Bdescription%5D=MATLAB+App"
                        CssClass="btn btn-small" Text="Buy">
                    </asp:HyperLink>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <asp:Image ID="Nodejs" runat="server" ImageUrl="Images/Node.js.png" />
                </div>
                <div class="details">
                    26$ -
                    <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/PlaceOrders/PlaceOrders.aspx?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Node.js+App"
                        CssClass="btn btn-small" Text="Buy">
                    </asp:HyperLink>
                </div>
            </div>
        </div>
        <div class="row app-row">
            <div class="span2">
                <div class="image">
                    <asp:Image ID="Perl" runat="server" ImageUrl="Images/Perl.png" />
                </div>
                <div class="details">
                    31$ -
                    <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/PlaceOrders/PlaceOrders.aspx?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Perl+App"
                        CssClass="btn btn-small" Text="Buy">
                    </asp:HyperLink>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <asp:Image ID="Python" runat="server" ImageUrl="Images/Python.png" />
                </div>
                <div class="details">
                    32$ -
                    <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/PlaceOrders/PlaceOrders.aspx?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Python+App"
                        CssClass="btn btn-small" Text="Buy">
                    </asp:HyperLink>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <asp:Image ID="R" runat="server" ImageUrl="Images/R.png" />
                </div>
                <div class="details">
                    33$ -
                    <asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="~/PlaceOrders/PlaceOrders.aspx?order%5Bamount%5D=11&amp;order%5Bdescription%5D=R+App"
                        CssClass="btn btn-small" Text="Buy">
                    </asp:HyperLink>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <asp:Image ID="React" runat="server" ImageUrl="Images/React.png" />
                </div>
                <div class="details">
                    34$ -
                    <asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/PlaceOrders/PlaceOrders.aspx?order%5Bamount%5D=11&amp;order%5Bdescription%5D=React+App"
                        CssClass="btn btn-small" Text="Buy">
                    </asp:HyperLink>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <asp:Image ID="Ruby" runat="server" ImageUrl="Images/Ruby.png" />
                </div>
                <div class="details">
                    35$ -
                    <asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/PlaceOrders/PlaceOrders.aspx?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Ruby+App"
                        CssClass="btn btn-small" Text="Buy">
                    </asp:HyperLink>
                </div>
            </div>
            <div class="span2">
                <div class="image">
                    <asp:Image ID="Scala" runat="server" ImageUrl="Images/Scala.png" />
                </div>
                <div class="details">
                    36$ -
                    <asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="~/PlaceOrders/PlaceOrders.aspx?order%5Bamount%5D=11&amp;order%5Bdescription%5D=Scala+App"
                        CssClass="btn btn-small" Text="Buy">
                    </asp:HyperLink>
                </div>
            </div>
        </div>
        <br />
        <br />
        <div class="row">
            <div class="span6 offset3">
                <p>
                    This is a sample application which showcases the new PayPal REST APIs. The App uses
                    mock data to demonstrate how you can use the REST APIs for the following operations:</p>
                <ul>
                    <li>Saving Credit Card information with PayPal for later use</li>
                    <li>Making Payments using a saved Credit Card</li>
                    <li>Making Payments using PayPal</li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
