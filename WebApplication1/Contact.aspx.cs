using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace WebApplication1
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Send_Email(object sender, EventArgs e)
        {
            string address = ContactFrom.Value;
            string subject = ContactSubject.Value;
            string message = ContactMessage.Value;

            MailMessage mail = new MailMessage(address, "eugene.nitka@erieinsurance.com", subject, message);
            SmtpClient smtpClient = new SmtpClient("smtp.live.com", 587);
            smtpClient.Credentials = new NetworkCredential("guitardozer@hotmail.com", "disturbed77");

            HttpContext.Current.Response.Write("<script type='text/javascript'>alert('Beginning email submit.'); window.location = '" + HttpContext.Current.Request.RawUrl + "';</script>");

            try
            {
                smtpClient.Send(mail);
                mail.Dispose();
                HttpContext.Current.Response.Write("<script type='text/javascript'>alert('Submit was successful.'); window.location = '" + HttpContext.Current.Request.RawUrl + "';</script>");
            }
            catch (Exception ex)
            {
                HttpContext.Current.Response.Write("<script type='text/javascript'>alert('Submit has failed: "+ex.Message+".'); window.location = '" + HttpContext.Current.Request.RawUrl + "';</script>");
            }
        }
    }
}