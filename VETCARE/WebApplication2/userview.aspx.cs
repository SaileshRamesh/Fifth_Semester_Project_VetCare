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
    public partial class userview : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
           
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("bill.aspx?val=" + TextBox5.Text);
        }
       
        }
      
      }
