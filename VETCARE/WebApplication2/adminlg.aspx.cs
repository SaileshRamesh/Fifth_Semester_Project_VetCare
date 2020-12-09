using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication2
{
    public partial class adminlg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=LoginDB;integrated Security=True;"))
            {
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM adminlg WHERE username=@username AND password=@password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@username", TextBox1.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Password", TextBox2.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["Username"] = TextBox1.Text.Trim();
                    Response.Redirect("adminview.aspx");
                }
                else
                {
                    Label1.Visible = true;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("adminsin.aspx");
        }
    }
}