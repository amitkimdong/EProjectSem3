using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_LuongTheVinh.Controls
{
    public partial class admTop : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ibtEn_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ibtVi_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void lbtLogout_Click(object sender, EventArgs e)
        {
            Session["UserName"] = "";
            Response.Redirect("~/Login.aspx");
           
        }

        protected void lbtHome_Click(object sender, EventArgs e)
        {

        }
    }
}