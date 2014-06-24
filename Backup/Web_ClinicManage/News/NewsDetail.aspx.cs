using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_ClinicManage.News
{
    public partial class NewsDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Update_Click(object sender, EventArgs e)
        {
            string str = FCKeditor1.Value;
        }

        protected void lbtBackB_Click(object sender, EventArgs e)
        {

        }
    }
}