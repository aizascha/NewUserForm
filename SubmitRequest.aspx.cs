using System;
using System.Collections.Specialized;
using System.Net.Mail;
using System.Net.Mime;
using System.Text;
using System.Web.UI;

public partial class SubmitRequest : Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		StringBuilder displayValues = new StringBuilder();
		NameValueCollection postedValues = Request.Form;
	    for (int i = 0; i < postedValues.AllKeys.Length - 1; i++)
		{
		    string nextKey = postedValues.AllKeys[i];

		    if (nextKey.Substring(0, 2) != "__")
			{
				displayValues.Append("<br>");
				displayValues.Append(nextKey);
				displayValues.Append(" = ");
				displayValues.Append(postedValues[i]);
			}
		}

	    // Requestor section
        displayValues.Replace("<br>reqName", "<strong>Requestor information</strong><br>Requestor's Name");
        displayValues.Replace("reqTitle", "Requestor's Title");
        displayValues.Replace("reqPhone", "Requestor's Phone");
        if (postedValues.Get("reqExt") == "") {
            displayValues.Replace("<br>reqExt = ", "");
        }
        else {
            displayValues.Replace("reqExt", "Requestor's Extension");
        }
        displayValues.Replace("reqEmail", "Requestor's Email");

        // Supervisor section
        if (postedValues.Get("supCheck") == "on") {
            displayValues.Replace("supCheck = on","Supervisor is the same as the Requestor");
        } else {
            displayValues.Replace("supName", "<br><strong>Supervisor information</strong><br>Supervisor's Name");
            displayValues.Replace("supTitle", "Supervisor's Title");
            displayValues.Replace("supPhone", "Supervisor's Phone");
            displayValues.Replace("supExt", "Supervisor's Extension");
            displayValues.Replace("supEmail", "Supervisor's Email");
        }

        // Employee section
        displayValues.Replace("empFirst", "<br><strong>New Employee information</strong><br>Employee's First Name");
        displayValues.Replace("empLast", "Employee's Last Name");
        if (postedValues.Get("empPref") == "") {
            displayValues.Replace("<br>empPref = ", "");
        } else {
            displayValues.Replace("empPref","Preferred Name");
        }
        displayValues.Replace("empTitle", "Employee's Title");
        // Employee phone options
        if (postedValues.Get("empPhone") == "No") {
            displayValues.Replace("empPhone = No", "Phone NOT required");
        } else if (postedValues.Get("empPhone") == "New") {
            displayValues.Replace("empPhone = New", "New phone extension required");
        } else {
            displayValues.Replace("empPhone = Reassign", "Reassign extension to new employee = ");
            displayValues.Replace("<br>empExt = ", "");
        }
        if (postedValues.Get("empCheck") == "on") {
            displayValues.Replace("empCheck = on", "Email required");
            if (postedValues.Get("empEmail") == "") {
                displayValues.Replace("<br>empEmail = ", "");
            } else {
                displayValues.Replace("empEmail", "Preferred Email");
            }
        } else {
            displayValues.Replace("empDate", "Email NOT required<br>empDate");
        }
        displayValues.Replace("empDate", "Start Date");
        displayValues.Replace("empDiv", "Division");
        displayValues.Replace("empDept", "Department");
        displayValues.Replace("empLoc", "Facility/Location");

        // Account/Access section
        displayValues.Replace("accStart = on", "<br><strong>Account/Access information</strong>");
        if (postedValues.Get("accuplus") == "on") {
            displayValues.Replace("accuplus = on", "Accuplus = Yes");
            displayValues.Replace("accuFac", "Accuplus Facility");
            displayValues.Replace("accuLev", "Accuplus Access Level");
        }
        if (postedValues.Get("as400") == "on") {
            displayValues.Replace("as400 = on", "AS400 = Yes");
            displayValues.Replace("as400Mimic", "AS400 Create Like");
        }
        if (postedValues.Get("gilAS400") == "on") {
            displayValues.Replace("gilAS400 = on", "Gilbert AS400 = Yes");
            displayValues.Replace("gilAS400Mimic", "Gilbert AS400 Create Like");
        }
        if (postedValues.Get("cargoWise") == "on") {
            displayValues.Replace("cargoWise = on", "CargoWise = Yes");
            displayValues.Replace("cargoWiseGrp", "CargoWise Group");
        }
        if (postedValues.Get("dispatcher") == "on") {
            displayValues.Replace("dispatcher = on", "Dispatcher = Yes");
            displayValues.Replace("dispatcherGrp", "Dispatcher Group");
        }
        if (postedValues.Get("exceed") == "on") {
            displayValues.Replace("exceed = on", "Exceed = Yes");
            displayValues.Replace("exceedFac", "Exceed Facility");
        }
        if (postedValues.Get("foursite") == "on") {
            displayValues.Replace("foursite = on", "Foursite = Yes");
            displayValues.Replace("foursiteMimic", "Foursite Create Like");
        }
        if (postedValues.Get("frtLgx") == "on") {
            displayValues.Replace("frtLgx = on", "Freight Logix/Accellos One = Yes");
            displayValues.Replace("frtLgxMimic", "Freight Logix Create Like");
        }
        if (postedValues.Get("lawson") == "on") {
            displayValues.Replace("lawson = on", "Lawson = Yes");
            displayValues.Replace("lawsonMimic","Lawson Create Account Like");
            displayValues.Replace("lawsonLev", "Lawson Access Level");
        }
        if (postedValues.Get("prManhattan") == "on") {
            displayValues.Replace("prManhattan = on", "Primary Manhattan = Yes");
            displayValues.Replace("prMhRole", "Primary Manhattan Role");
        }
        if (postedValues.Get("prSciAccess") == "on") {
            displayValues.Replace("prSciAccess = on","Primary Manhattan SCI Access = Yes");
        }
        if (postedValues.Get("secManhattan") == "on") {
            displayValues.Replace("secManhattan = on","Secondary Manhattan = Yes");
            displayValues.Replace("secMhRole","Secondary Manhattan Role");
        }
        if (postedValues.Get("secSciAccess") == "on") {
            displayValues.Replace("secSciAccess = on","Secondary Manhattan SCI Access = Yes");
        }
        if (postedValues.Get("msRpt") == "on") {
            displayValues.Replace("msRpt = on", "MS Reporting = Yes");
            displayValues.Replace("msRptFac", "MS Reporting Facility");
        }
        if (postedValues.Get("customapp") == "on") {
            displayValues.Replace("customapp = on", "Custom App = Yes");
            displayValues.Replace("customappMimic", "Custom App Create Account Like");
        }
        if (postedValues.Get("qhos") == "on") {
            displayValues.Replace("qhos = on", "QHOS = Yes");
            displayValues.Replace("qhosMimic", "QHOS Create Account Like");
        }
        if (postedValues.Get("rFax") == "on") {
            displayValues.Replace("rFax = on", "RightFax = Yes");
            displayValues.Replace("rFaxGrp", "RightFax Group");
            if (postedValues.Get("rFaxNum") == "on") {
                displayValues.Replace("rFaxNum = on", "Assign New RightFax Number = Yes");
            }
        }
        if (postedValues.Get("scms") == "on") {
            displayValues.Replace("scms = on", "SCMS = Yes");
            displayValues.Replace("scmsGrp", "SCMS Group");
        }
        if (postedValues.Get("tmt") == "on") {
            displayValues.Replace("tmt = on", "TMT = Yes");
            displayValues.Replace("tmtGrp", "TMT Group");
        }
        if (postedValues.Get("tmw") == "on") {
            displayValues.Replace("tmw = on", "TMW = Yes");
            displayValues.Replace("tmwMimic", "TMW Create Account Like");
        }
        displayValues.Replace("adAcct", "<br><strong>Network/AD Create Account Like</strong>");
        displayValues.Replace("distList", "<br>Distribution Lists");
        displayValues.Replace("netShares", "<br>Shared Folder Access");
        displayValues.Replace("addInfo", "<br>Additional Info");

        // Display the submitted form
        Label1.Text = displayValues.ToString();

        // Create the subject of the email with the Employee's name
        string emlSubject = "New Employee Request - " + postedValues.Get("empFirst") + " " + postedValues.Get("empLast");

        // Create HTML formatted email body
        StringBuilder htmlBody = new StringBuilder();
        htmlBody.Append("<!DOCTYPE html>");
        htmlBody.Append("<html>");
        htmlBody.Append("<head lang\"en\">");
        htmlBody.Append("<meta charset=\"UTF-8\">");
        htmlBody.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">");
        htmlBody.Append("<meta name=\"viewport\" content=\"width=device-width,initial-scale=1.0\">");
        htmlBody.Append("</head>");
        htmlBody.Append("<body style=\"background-color: #EFEFEF\">");
        htmlBody.Append("<header><div>");
        htmlBody.Append("<h1>DO NOT REPLY TO THIS EMAIL</h1>");
        htmlBody.Append("</div></header>");
        htmlBody.Append("<div>");
        htmlBody.Append("<br><h2>NFI Access Request Submitted</h2>");
        htmlBody.Append(displayValues.ToString());
        htmlBody.Append("<br><br><strong>If you have any corrections to the above, please CALL the help desk with the corrections</strong>");
        htmlBody.Append("<br><br><strong>DO NOT REPLY TO THIS EMAIL</strong>");
        htmlBody.Append("</div>");
        htmlBody.Append("</body>");
        htmlBody.Append("</html>");

        ContentType mimeType = new ContentType("text/html");

        // Convert the submitted form from html to plain text
        displayValues.Replace("<br>", "\n");
        displayValues.Replace("<strong>", "");
        displayValues.Replace("</strong>", "");

        // Create plain text email message for TrackIt
        MailMessage mailObjPT = new MailMessage("new.user@Contoso.com","monitor@Contoso.com",emlSubject,displayValues.ToString());

        // Create html email message for Requestor
        MailMessage mailObjHTML = new MailMessage("new.user@Contoso.com",postedValues.Get("reqEmail"),emlSubject,displayValues.ToString());

        // CC the Supervisor
        if (postedValues.Get("supCheck") != "on") {
            mailObjHTML.CC.Add(new MailAddress(postedValues.Get("supEmail")));
        }

        // Set the Reply To
        mailObjHTML.ReplyToList.Add(new MailAddress("donotreply@Contoso.com"));

        // Add the html body to the message.
        AlternateView htmlView = AlternateView.CreateAlternateViewFromString(htmlBody.ToString(),mimeType);
        mailObjHTML.AlternateViews.Add(htmlView);

        // Send the email
        SmtpClient smtpServer = new SmtpClient("mail.contoso.com");
        try
        {
            smtpServer.Send(mailObjPT);
        }
        catch (Exception ex)
        {
            Label2.Text = "Could not send the e-mail - error: " + ex;
        }
        try {
            smtpServer.Send(mailObjHTML);
        }
        catch (Exception ex) {
            Label3.Text = "Could not send the e-mail - error: " + ex;
        }
    }
}