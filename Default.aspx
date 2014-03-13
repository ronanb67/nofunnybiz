<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <script type="text/javascript" src="https://static.twilio.com/libs/twiliojs/1.1/twilio.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script> 
    <script type="text/javascript">

        Twilio.Device.setup('@token');

        Twilio.Device.ready(function (device) {
            $("#log").text("Client '@clientName' is ready");
        });

        Twilio.Device.error(function (error) {
            $("#log").text("Error: " + error.message);
        });

        Twilio.Device.connect(function (conn) {
            $("#log").text("Successfully established call");
        });

        Twilio.Device.disconnect(function (conn) {
            $("#log").text("Call ended");
        });

        Twilio.Device.incoming(function (conn) {
            $("#log").text("Incoming connection from " + conn.parameters.From);
            // accept the incoming connection and start two-way audio
            conn.accept();
        });

        function call() {
            // get the phone number or client to connect the call to
            params = { "PhoneNumber": $("#number").val() };
            Twilio.Device.connect(params);
        }

        function hangup() {
            Twilio.Device.disconnectAll();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <div class="hero-unit" style="background-color: white; margin-left: 650px;">
        <div class="container">
            <h3>Call us and watch us answer!</h3>
            <p style="margin-left: -65px;">Use Twilio to call our office and watch us answer on camera.</p>
            <button class="call" onclick="call();">
                Call
            </button>
            <button class="hangup" onclick="hangup();">
                Hangup
            </button>
            <input type="text" id="number" name="number"
                placeholder="Enter a phone number or client to call" />
        </div>
    </div>
</asp:Content>


