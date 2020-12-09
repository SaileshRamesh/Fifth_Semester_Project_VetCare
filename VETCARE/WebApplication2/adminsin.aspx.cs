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
    public partial class adminsin : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
            con.ConnectionString = "Data Source=SAILESH-R\\SQLEXPRESS;Initial Catalog=LoginDB;Integrated Security=True";
            con.Open();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Label2.Visible = true;
            SqlCommand cmd = new SqlCommand("Insert into adminlg" + "(fname,lname,contact,address,username,password)values(@fname,@lname,@contact,@address,@username,@password)", con);
            cmd.Parameters.AddWithValue("@fname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@lname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@contact", TextBox3.Text);
            cmd.Parameters.AddWithValue("@address", TextBox4.Text);
            
            cmd.Parameters.AddWithValue("@username", TextBox6.Text);
            cmd.Parameters.AddWithValue("@password", TextBox7.Text);
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                Label2.Text = "Record Inserted Succesfully into the Database";
            }
            if (Page.IsValid)
            {
                Button1.Text = "Valid";
            }
            else
            {
                Button1.Text = "Invalid";
            }
            con.Close();
            Response.Redirect("adminview.aspx");
        }

        
      
    }
}