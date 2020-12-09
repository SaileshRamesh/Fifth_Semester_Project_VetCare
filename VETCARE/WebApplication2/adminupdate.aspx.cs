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
using System.IO;

namespace WebApplication2
{
    public partial class adminupdate : System.Web.UI.Page
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
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/" + str));
            string Image = "~/upload/" + str.ToString();
            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();
            String sql = "";
            sql = "Update product_tb set pname="+TextBox2.Text+",pcategory="+DropDownList1.SelectedValue+",price="+TextBox3.Text+",imagedata="+FileUpload1.FileName+" where id="+TextBox1.Text+"";
            command = new SqlCommand(sql, cnn);
            adapter.InsertCommand = new SqlCommand(sql, cnn);
            adapter.InsertCommand.ExecuteNonQuery();
            
            Label1.Text = "Record Deleted Succesfully";
            TextBox1.Text = "";
            TextBox2.Text = "";
       
            command.Dispose();
		    cnn.Close();
		
        }
    }
}