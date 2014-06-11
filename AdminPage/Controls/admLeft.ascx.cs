using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_LuongTheVinh.Controls
{
    public partial class admLeft : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/User.aspx");
        }
    }
}