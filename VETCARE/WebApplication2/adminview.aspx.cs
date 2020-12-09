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
    public partial class adminnew : System.Web.UI.Page
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
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/" + str));
            string Image = "~/upload/" + str.ToString();
            SqlCommand cmd = new SqlCommand("Insert into product_tb(imagedata,pname,pcategory,price)values(@Image,@pname,@pcategory,@price)", con);
            cmd.Parameters.AddWithValue("@pname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@price", TextBox2.Text);
            cmd.Parameters.AddWithValue("@pcategory", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("Image", Image); 
            int k = cmd.ExecuteNonQuery();
            if (k == 1)
            {
                Label1.Text = "Record Inserted Succesfully into the Database";
                TextBox1.Text = "";
                TextBox2.Text = "";
                DropDownList1.ClearSelection();
            }
            else
            {
                Button1.Text = "Invalid";
            }
            con.Close();
            con.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("admingrid.aspx");
        }
    }
}