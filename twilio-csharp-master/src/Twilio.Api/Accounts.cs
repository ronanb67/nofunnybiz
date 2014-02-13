﻿using System;
using RestSharp;

namespace Twilio
{
	public partial class TwilioRestClient
	{
		/// <summary>
		/// Retrieve the account details for the currently authenticated account. Makes a GET request to an Account Instance resource.
		/// </summary>
        public virtual Account GetAccount()
		{
			var request = new RestRequest();
			request.Resource = "Accounts/{AccountSid}.json";
			
			return Execute<Account>(request);
		}

		/// <summary>
		/// Retrieve the account details for a subaccount. Makes a GET request to an Account Instance resource.
		/// </summary>
		/// <param name="accountSid">The Sid of the subaccount to retrieve</param>
        public virtual Account GetAccount(string accountSid)
		{
			var request = new RestRequest();
			request.Resource = "Accounts/{AccountSid}.json";
			
			request.AddUrlSegment("AccountSid", accountSid);

			return Execute<Account>(request);
		}

		/// <summary>
		/// List all subaccounts created for the authenticated account. Makes a GET request to the Account List resource.
		/// </summary>
        public virtual AccountResult ListSubAccounts()
		{
			var request = new RestRequest();
			request.Resource = "Accounts.json";

			return Execute<AccountResult>(request);
		}

        /// <summary>
        /// List subaccounts that match the provided FriendlyName for the authenticated account. Makes a GET request to the Account List resource.
        /// </summary>
        /// <param name="friendlyName">Name associated with this account</param>
        public virtual AccountResult ListSubAccounts(string friendlyName)
        {
            var request = new RestRequest();
            request.Resource = "Accounts.json";

            request.AddParameter("FriendlyName", friendlyName);

            return Execute<AccountResult>(request);
        }

		/// <summary>
		/// Creates a new subaccount under the authenticated account. Makes a POST request to the Account List resource.
		/// </summary>
		/// <param name="friendlyName">Name associated with this account for your own reference (can be empty string)</param>
        public virtual Account CreateSubAccount(string friendlyName)
		{
			var request = new RestRequest(Method.POST);
			request.Resource = "Accounts.json";
			
			request.AddParameter("FriendlyName", friendlyName);

			return Execute<Account>(request);
		}

		/// <summary>
		/// Changes the status of a subaccount. You must be authenticated as the master account to call this method on a subaccount.
		/// WARNING: When closing an account, Twilio will release all phone numbers assigned to it and shut it down completely. 
		/// You can't ever use a closed account to make and receive phone calls or send and receive SMS messages. 
		/// It's closed, gone, kaput. It will still appear in your accounts list, and you will still have access to historical 
		/// data for that subaccount, but you cannot reopen a closed account.
		/// </summary>
		/// <param name="subAccountSid">The subaccount to change the status on</param>
		/// <param name="status">The status to change the subaccount to</param>
        public virtual Account ChangeSubAccountStatus(string subAccountSid, AccountStatus status)
		{
			if (subAccountSid == AccountSid)
			{
				throw new InvalidOperationException("Subaccount status can only be changed when authenticated from the master account.");
			}

			var request = new RestRequest(Method.POST);
			request.Resource = "Accounts/{AccountSid}.json";
			
			request.AddParameter("Status", status.ToString().ToLower());
			request.AddUrlSegment("AccountSid", subAccountSid);

			return Execute<Account>(request);
		}

		/// <summary>
		/// Update the friendly name associated with the currently authenticated account. Makes a POST request to an Account Instance resource.
		/// </summary>
		/// <param name="friendlyName">Name to use when updating</param>
        public virtual Account UpdateAccountName(string friendlyName)
		{
			var request = new RestRequest(Method.POST);
			request.Resource = "Accounts/{AccountSid}.json";
			request.AddParameter("FriendlyName", friendlyName);

			return Execute<Account>(request);
		}
    }
}