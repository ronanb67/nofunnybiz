<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <script type="text/javascript" src="//static.twilio.com/libs/twiliojs/1.1/twilio.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js">
    </script>
    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
   
    <div class="hero-unit" style="background-color:white; margin-left:650px;">
    <div class="container">      
  <h3>Call us and watch us answer!</h3> 
        <p style="margin-left:-65px;">Use Twilio to call our office and watch us answer on camera.</p>         
  
    <%--<button <%--class="call" onclick="callpage_Click">
      Call
    </button>--%>
        <button class="btn btn-danger btn-large" onclick="callpage_Click"><i class="icon-phone"></i> Call us!</button>
  
    <%--<button class="hangup" onclick="hangup();">
      Hangup
    </button> --%>       
           
        </div>        
        </div>
</asp:Content>

