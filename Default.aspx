<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <h1>
                        <a class='navbar-brand' href="/Index.aspx">
                            No Funny Biz
                        </a>
                    </h1>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse">
                    <ul class='nav navbar-nav tm-navbar'>
                        <li><a href='/'>Home</a></li>
                        <li><a href="Connect.aspx">Connect</a></li>                 
                        
                    </ul>
                </div>
                <!-- /.nav-collapse -->
            </div>
            <!-- /.container -->
        </div>
        <!-- /.navbar -->
    <div class="jumbotron">
        <div class="container">
        <i class="icon-phone"></i> fa-phone
    </div>
    </div>

</asp:Content>

