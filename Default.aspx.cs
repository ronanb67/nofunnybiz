using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Twilio;


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
        CallOptions options = new CallOptions();
        options.To = "+353862240661";
        options.From = "+353766805789";
        options.Url = "http://demo.twilio.com/docs/voice.xml";
        options.ApplicationSid = "APe287283110f74e87eaefde2b990398c6";
        options.Method = "GET";
        options.FallbackMethod = "GET";
        options.StatusCallbackMethod = "GET";
        options.Record = false;

        var call = twilio.InitiateOutboundCall(options);
        Console.WriteLine(call.Sid);
        if (call.RestException == null)
        {
            Response.Write(string.Format("Started call: {0}", call.Sid));
        }
        else
        {
            Response.Write(string.Format("Error: {0}", call.RestException.Message));
        }
    }
    protected void GreetButton_Click(object sender, EventArgs e)
    {
        string AccountSid = "AC15403cb368014b2d1eb45fa4e366343e";
        string AuthToken = "db65726686db0599044da6e2664f5dba";
        var twilio = new TwilioRestClient(AccountSid, AuthToken);


        // Build the parameters 
        CallOptions options = new CallOptions();
        options.To = "+353862240661";
        options.From = "+353766805789";
        options.Url = "http://demo.twilio.com/docs/voice.xml";
        options.ApplicationSid = "APe287283110f74e87eaefde2b990398c6";
        options.Method = "GET";
        options.FallbackMethod = "GET";
        options.StatusCallbackMethod = "GET";
        options.Record = false;

        var call = twilio.InitiateOutboundCall(options);
        Console.WriteLine(call.Sid);
        if (call.RestException == null)
        {
            Response.Write(string.Format("Started call: {0}", call.Sid));
        }
        else
        {
            Response.Write(string.Format("Error: {0}", call.RestException.Message));
        }
    }
}

