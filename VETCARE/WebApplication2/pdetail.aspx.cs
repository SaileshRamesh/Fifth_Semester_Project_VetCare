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
    public partial class _new : System.Web.UI.Page
    {
         SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=SAILESH-R\\SQLEXPRESS;Initial Catalog=LoginDB;Integrated Security=True";
            con.Open();
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into pdetail" + "(username,pname,pcat,gender,height,weight)values(@username,@pname,@pcat,@gender,@height,@weight)", con);
            
            cmd.Parameters.AddWithValue("@username", TextBox2.Text);
            cmd.Parameters.AddWithValue("@pname", TextBox3.Text);
            cmd.Parameters.AddWithValue("@pcat", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@gender", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@height", TextBox4.Text);
            cmd.Parameters.AddWithValue("@weight", TextBox5.Text);
        
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
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("cat.aspx");
        }
    }
}