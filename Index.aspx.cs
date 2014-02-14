using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using Twilio;
class Example
{
    static void Main(string[] args)
    {
        // Find your Account Sid and Auth Token at twilio.com/user/account 
        string AccountSid = "AC45b00a5504e242b8a486ebf4cad405c9";
        string AuthToken = "e0d2edd31902f751871bd792a18a06b3";
        var twilio = new TwilioRestClient(AccountSid, AuthToken);

        // Build the parameters 
        var options = new CallOptions();
        options.To = "";
        options.From = "+353766805789";
        options.ApplicationSid = "PN12025fa386226d4ead7911686fa78b7a";
        options.Method = "GET";
        options.FallbackMethod = "GET";
        options.StatusCallbackMethod = "GET";
        options.Record = false;

        var call = twilio.InitiateOutboundCall(options);
        Console.WriteLine(call.Sid);
    }
}
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}