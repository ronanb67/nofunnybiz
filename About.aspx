<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <div class="container">
    <div>This site is built using Evercam and Twilio.
        <p>To learn more about Evercam please visit our site at <a href="https://www.evercam.io/">Evercam.io</a></p>
    </div>
    <div style="padding: 1px;">
        <script type="text/javascript" src="http://www.webestools.com/google_map_gen.js?lati=53.354328&long=-6.262840&zoom=18&width=480&height=300&mapType=normal&map_btn_normal=yes&map_btn_satelite=yes&map_btn_mixte=yes&map_small=yes&marqueur=yes&info_bulle="></script>
    </div>
        <h4>Contact Information</h4>
                <address>
                    <strong>Evercam </strong><br/>
                    12 Parnell Square East<br/>
                    Dublin 2<br/>
                    Ireland<br/>
                    <abbr title="Phone">P:</abbr>
                           +353 (1) 538 3333
                    <br/>
                     <abbr title="Email">E:</abbr>
                        <a href="mailto:info@evercam.com">info@evercam.com</a>
                </address>
        </div>
</asp:Content>

