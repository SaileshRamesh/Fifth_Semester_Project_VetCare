using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;


namespace WebApplication2
{
    public partial class appoint : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=SAILESH-R\\SQLEXPRESS;Initial Catalog=LoginDB;Integrated Security=True";
            con.Open();
        }
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            bool hasuname = TextBox7.Text.Length > 0 ? true : false;
            bool hascont = TextBox8.Text.Length > 0 ? true : false;
            bool hasreason = TextBox9.Text.Length > 0 ? true : false;
            if ((Calendar1.SelectedDate == null) || (Calendar1.SelectedDate == new DateTime(0001, 1, 1, 0, 0, 0)))
            {
                args.IsValid = false;
            }
            if (hasuname && hascont && hasreason)
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlCommand cmd = new SqlCommand("Insert into appoint" + "(username,phone,date,time,reason)values(@username,@phone,@date,@time,@reason)", con);

                cmd.Parameters.AddWithValue("@username", TextBox7.Text);
                cmd.Parameters.AddWithValue("@phone", TextBox8.Text);
                cmd.Parameters.AddWithValue("@date", Calendar1.SelectedDate);
                cmd.Parameters.AddWithValue("@time", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@reason", TextBox9.Text);
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    Label1.Text = "Appointment Successfull";
                }
                /*if (Page.IsValid)
                {
                    Button1.Text = "Valid";
                }
                else
                {
                    Button1.Text = "Invalid";
                }*/
                con.Close();
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("cat.aspx");
        }
    }
}