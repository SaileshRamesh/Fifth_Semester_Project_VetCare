using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace WebApplication2
{
    public partial class admindelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             string connectionString;
            SqlConnection cnn;

            connectionString = "Data Source=SAILESH-R\\SQLEXPRESS;Initial Catalog=LoginDB;Integrated Security=True";

            cnn = new SqlConnection(connectionString);

            cnn.Open();  
            SqlCommand command;
		    SqlDataAdapter adapter = new SqlDataAdapter(); 
		    String sql="";
		
		    sql = "Delete product_tb where id="+TextBox1.Text+"";
		
		    command = new SqlCommand(sql,cnn);
		
		    adapter.DeleteCommand = new SqlCommand(sql,cnn); 
		    int k = adapter.DeleteCommand.ExecuteNonQuery();
            if (k == 1)
            {
                Label1.Text = "Record Deleted Succesfully";
                TextBox1.Text = "";
                
            }
            else
            {
                Button1.Text = "Invalid";
            }
            command.Dispose();
		    cnn.Close();
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("admingrid.aspx");
        }
    }
}