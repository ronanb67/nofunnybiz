<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Make_call.aspx.cs" Inherits="Make_call" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <button class="call" onclick="call();">
      Call
    </button>
  
    <button class="hangup" onclick="hangup();">
      Hangup
    </button>
  
    <input type="text" id="number" name="number"
      placeholder="Enter a phone number to call"/>  
</asp:Content>

