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
    public partial class sinup : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=SAILESH-R\\SQLEXPRESS;Initial Catalog=LoginDB;Integrated Security=True";
            con.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into reg" + "(fname,lname,contact,address,username,password,email)values(@fname,@lname,@contact,@address,@username,@password,@email)", con);
            cmd.Parameters.AddWithValue("@fname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@lname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@contact", TextBox3.Text);
            cmd.Parameters.AddWithValue("@address", TextBox7.Text);
            cmd.Parameters.AddWithValue("@username", TextBox8.Text);
            cmd.Parameters.AddWithValue("@password", TextBox6.Text);
            cmd.Parameters.AddWithValue("@email", TextBox9.Text);
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                Label11.Text = "Record Inserted Succesfully into the Database";
                Response.Redirect("pdetail.aspx");
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
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("login.aspx");
        }
     
    }
}
