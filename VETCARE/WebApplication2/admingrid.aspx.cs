using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class admingrid: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
   
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminapntview.aspx");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminviewpay.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("admindelete.aspx");
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
}
  
}