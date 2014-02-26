<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Makecall.aspx.cs" Inherits="Makecall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript"
      src="//static.twilio.com/libs/twiliojs/1.1/twilio.min.js"></script>
    <script type="text/javascript"
      src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js">
    </script>
    <link href="http://static0.twilio.com/packages/quickstart/client.css"
      type="text/css" rel="stylesheet" />
    <script type="text/javascript">

        Twilio.Device.setup('@token');

        Twilio.Device.ready(function (device) {
            $("#log").text("Ready");
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
            // get the phone number to connect the call to
            params = { "PhoneNumber": $("#number").val() };
            Twilio.Device.connect(params);
        }

        function hangup() {
            Twilio.Device.disconnectAll();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <button class="call" onclick="call();">
      Call
    </button>
  
    <button class="hangup" onclick="hangup();">
      Hangup
    </button>
  
    <input type="text" id="number" name="number"
      placeholder="Enter a phone number to call"/>  
</asp:Content>

