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
    public partial class bill : System.Web.UI.Page
    {
        
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

                con.ConnectionString = "Data Source=SAILESH-R\\SQLEXPRESS;Initial Catalog=LoginDB;Integrated Security=True";
                con.Open();
                TextBox10.Text = Request.QueryString["val"];
                SqlConnection con1 = new SqlConnection("Data Source=SAILESH-R\\SQLEXPRESS;Initial Catalog=LoginDB;Integrated Security=True");
                DataTable dt = new DataTable();
                con1.Open();
                SqlDataReader myReader = null;
                SqlCommand myCommand = new SqlCommand("select * from product_tb where id='" + TextBox10.Text + "'", con1);

                myReader = myCommand.ExecuteReader();

                while (myReader.Read())
                {
                    TextBox5.Text = (myReader["pname"].ToString());
                    TextBox6.Text = (myReader["pcategory"].ToString());
                    TextBox7.Text = (myReader["price"].ToString());

                }
                con1.Close();
            }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlCommand cmd = new SqlCommand("Insert into bill" + "(id,pname,pcategory,price,payment)values(@id,@pname,@pcategory,@price,@payment)", con);
                cmd.Parameters.AddWithValue("@id", TextBox10.Text);
                cmd.Parameters.AddWithValue("@pname", TextBox5.Text);
                cmd.Parameters.AddWithValue("@pcategory", TextBox6.Text);
                cmd.Parameters.AddWithValue("@price", TextBox7.Text);
                cmd.Parameters.AddWithValue("@payment", DropDownList1.SelectedValue);
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    Label1.Text = "Thankyou for buying, your poduct will reach you soon";
                }
                con.Close();
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            bool hascard = TextBox8.Text.Length > 0 ? true : false;
            bool haspass = TextBox9.Text.Length > 0 ? true : false;
            if (hascard && haspass)
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    }
}