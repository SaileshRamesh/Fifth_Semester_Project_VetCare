using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Drawing;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class userforgot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButPwd_Click1(object sender, EventArgs e)
        {
            string username = "";
            string password = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select username, password from reg where email=@email", con);
            cmd.Parameters.AddWithValue("@email", TxtEmail.Text);
            con.Open();
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {

                if (sdr.Read())
                {
                    username = sdr["username"].ToString();
                    password = sdr["password"].ToString();

                }

            }
            con.Close();

            if (!string.IsNullOrEmpty(password))
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("heerasailesh@gmail.com");
                msg.To.Add(TxtEmail.Text);
                msg.Subject = "Recover your Password";
                msg.Body = ("Your Username is:" + username + "<br/><br/>" + "Your password is:" + password);
                msg.IsBodyHtml = true;
                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "heerasailesh@gmail.com"; //Your Email ID  
                ntwd.Password = "7760002197"; // Your Password  
                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);
                Labmsg.Text = "Username and Password Sent Successfully";
                Labmsg.ForeColor = System.Drawing.Color.ForestGreen;
            }
            else
            {
                Labmsg.ForeColor = Color.Red;
                Labmsg.Text = "This email address does not match our records.";
            }
        }
        
        }
    }