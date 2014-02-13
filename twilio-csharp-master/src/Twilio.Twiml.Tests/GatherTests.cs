﻿using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Twilio.TwiML.Tests
{
    [TestClass]
	public class GatherTests : TestBase
	{
		[TestMethod]
		public void Can_Generate_Gather_With_No_Options()
		{
			var response = new TwilioResponse();
			response.Gather();

			Assert.IsTrue(IsValidTwiML(response.ToXDocument()));
		}

		[TestMethod]
		public void Can_Generate_Gather_With_All_Options()
		{
			var response = new TwilioResponse();
			response.Gather(new { action = "example.xml", timeout = 10, method = "GET", finishOnKey = "#", numDigits = 3 });

			Assert.IsTrue(IsValidTwiML(response.ToXDocument()));
		}

		[TestMethod]
		public void Can_Generate_Gather_With_All_Options_and_Nested_Verbs_With_Begin_End()
		{
			var response = new TwilioResponse();
			response.BeginGather(new { action = "example.xml", timeout = 10, method = "GET", finishOnKey = "#", numDigits = 3 })
					.Say("hello")
					.Play("example.mp3")
					.Pause(10)
					.EndGather();

			Assert.IsTrue(IsValidTwiML(response.ToXDocument()));
		}
	}
}
