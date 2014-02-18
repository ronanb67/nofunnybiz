<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Camera.aspx.cs" Inherits="Camera" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>    
    <script src="http://cdn.evercam.io/js/v1/evercam-test.js"></script>
<script src="Scripts/jquery-2.0.3.js"></script>
    <title></title>
</head>
    <body>
        <table cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td height="25px" width="100%">&nbsp;</td>
            </tr>
            <tr>
                <td width="100%">
                    <table cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td></td>
                            <td align="center">
                                <div class="content-outer">
                                    <div class="fauxborder-left content-fauxborder-left">
                                        <div class="fauxborder-right content-fauxborder-right"></div>
                                        <div class="auto-style1">
                                            <div style="height: 480px;" id="divimg">
                                                <!--  -->
                                                <img id='fullbackground' evercam='' refresh="1000" height="480px" width="640px" alt="" onclick="ExitfullBackgroundImage()" />
                                                <img />
                                                <script>
                                                    $(document).ready(function () {


                                                    });
                                                </script>
                                            </div>
                                            <div style="width: 640px; height: 44px; text-align: center; background-color: #FFFFFF;">
                                                <div style="float: left; margin: 8px 10px 7px 20px">
                                                    <a href="http://www.evercam.com/" target="_blank">
                                                        <img height="25" src="http://www.evercam.io/img/logo.svg" border="0" width="175" alt="http://www.evercam.com/" /></a>

                                                </div>
                                                <div style="width: 143px; height: 25px; float: left; margin: 11px 10px 9px 270px;">
                                                    <a href="http://www.camba.tv" target="_blank">
                                                        <img height="25" src="../../Images/cambasmall.gif" width="143" border="0" alt="http://www.camba.tv" /></a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 640px; height: 44px; text-align: left; margin: auto">
                                    <div style="float: left; margin: 10px 100px 10px 0px;">
                                        <a href="javascript:ShowAbout();" class="link1">About</a>
                                        <a href="javascript:ExitfullBackgroundImage();" class="link1">Full Screen</a>
                                        <a href="javascript:ShowComments();" class="link1">Comments</a>
                                    </div>
                                    <div style="width: 67px; float: right; margin: 7px 0px 10px 10px; text-align: right;">
                                        <g:plusone size="standard" count="true" href="http://www.remembrancecam.com/"></g:plusone>
                                    </div>

                                    <div style="float: right; margin: 9px 0px 10px 10px; text-align: right">
                                        <iframe src="" scrolling="no" frameborder="0" style="border: none; overflow: hidden; width: 80px; height: 21px;" allowtransparency="true"></iframe>
                                    </div>
                                </div>
                                <div id="divComments" style="width: 640px; text-align: center; margin: auto; display: none;">
                                    <div id="fb-root"></div>
                                    <script src="http://connect.facebook.net/en_US/all.js#xfbml=1"></script>
                                    <fb:comments href="http://www.remembrancecam.com/" num_posts="2" width="640"></fb:comments>
                                </div>
                                <div id="divAbout" style="width: 640px; height: 364px; text-align: left; margin: auto; display: none;">
                                    <table cellpadding="0" cellspacing="0" width="640px">
                                        <tr>
                                            <td style="width: 260px; text-align: left;" valign="top">

                                                <!-- ************* left ************* -->
                                                <div style="padding-top: 10px;">
                                                    <div style="color: White; font-size: 14px;"><strong>ABOUT</strong></div>
                                                    <div style="width: 247px;">
                                                        <div style="padding: 2px 0px 2px 0px;">
                                                        </div>
                                                        <div style="padding: 2px 0px 2px 0px;">This site is brought to you by:</div>
                                                        <ul>
                                                            <li>
                                                                <a href="http://www.camba.tv" target="_blank" class="link2">Camba.tv</a>
                                                                (Cameras &amp; Software)
                                                            </li>
                                                            <li>
                                                                <a href="http://www.evercam.com/" target="_blank" class="link2">Evercam.io</a>
                                                                (Cameras &amp; Software)
                                                            </li>
                                                        </ul>
                                                        <div style="padding: 2px 0px 2px 0px;">
                                                            For any questions, please contact
                                                        howrya@evercam.io
                                                        </div>
                                                    </div>
                                                    <div style="height: 175px;"></div>
                                                    <div><a href="javascript:HideAbout();" class="link1"></div>
                                                </div>
                                                <!-- ************* left ************* -->

                                            </td>
                                            <td style="width: 380px; text-align: right;" align="top">
                                                <div style="padding: 1px;">
                                                    <script type="text/javascript" src="http://www.webestools.com/google_map_gen.js?lati=53.354328&long=-6.262840&zoom=18&width=480&height=300&mapType=normal&map_btn_normal=yes&map_btn_satelite=yes&map_btn_mixte=yes&map_small=yes&marqueur=yes&info_bulle="></script>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <script type="text/javascript">
            var IsFull = false;
            var IsShowed = false;
            var isShowedAbout = false;
            function ShowIcon() {
                if (!IsFull) {
                    var p = $("#fullbackground");
                    var position = p.position();
                    $("#divIcon").css("left", (position.left + 600) + "px");
                    $("#divIcon").css("top", (position.top + 440) + "px");
                    $("#divIcon").show();
                }
                else {
                    $("#divIcon").hide();
                }
            }
            function HideIcon() {
                $("#divIcon").hide();
            }
            function fullBackgroundImage() {
                IsFull = true;
                $("#fullbackground").fullBG();
            }
            function ExitfullBackgroundImage() {
                if (IsFull) {
                    $("#fullbackground").width(640);
                    $("#fullbackground").height(480);
                    $("#fullbackground").removeClass("fullBG");
                    IsFull = false;
                }
                else if (!IsFull) {
                    IsFull = true;
                    $("#fullbackground").attr("style", "");
                    $("#fullbackground").addClass("fullBG");
                    $("#fullbackground").fullBG();
                }
            }
            function ShowComments() {
                if (IsShowed) {
                    IsShowed = false;
                    $("#divComments").hide();
                }
                else if (!IsShowed) {
                    if (isShowedAbout) {
                        isShowedAbout = false;
                        $("#divAbout").hide();
                    }
                    $("#divComments").show();
                    IsShowed = true;
                }
            }
            function ShowAbout() {
                if (isShowedAbout) {
                    isShowedAbout = false;
                    $("#divAbout").hide();
                }
                else if (!isShowedAbout) {
                    if (IsShowed) {
                        IsShowed = false;
                        $("#divComments").hide();
                    }
                    $("#divAbout").show();
                    isShowedAbout = true;
                }
            }
            function HideAbout() {
                if (isShowedAbout) {
                    isShowedAbout = false;
                    $("#divAbout").hide();
                }
            }
        </script>
    </body>
</html>
</asp:Content>

