﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Twilio;
class Example
{
    static void Main(string[] args)
    {
        
    }
}
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void callpage_Click(object sender, EventArgs e)
    { // Find your Account Sid and Auth Token at twilio.com/user/account 
        string AccountSid = "AC15403cb368014b2d1eb45fa4e366343e";
        string AuthToken = "db65726686db0599044da6e2664f5dba";
        var twilio = new TwilioRestClient(AccountSid, AuthToken);

        // Build the parameters 
        var options = new CallOptions();
        options.To = "+35316972147";
        options.From = "+353766805789";
        options.ApplicationSid = "PN12025fa386226d4ead7911686fa78b7a";
        options.Method = "GET";
        options.FallbackMethod = "GET";
        options.StatusCallbackMethod = "GET";
        options.Record = false;

        var call = twilio.InitiateOutboundCall(options);
        Console.WriteLine(call.Sid);

        Server.Transfer("Camera.aspx", true);
    }
}