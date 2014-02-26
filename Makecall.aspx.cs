using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Twilio;

public partial class Makecall : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        { // Find your Account Sid and Auth Token at twilio.com/user/account 
            string AccountSid = "AC15403cb368014b2d1eb45fa4e366343e";
            string AuthToken = "db65726686db0599044da6e2664f5dba";
            var twilio = new TwilioRestClient(AccountSid, AuthToken);
        }
    }
}