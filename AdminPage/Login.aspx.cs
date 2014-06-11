using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
namespace Web_LuongTheVinh
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lbtLogin_Click(object sender, EventArgs e)
        {
            //DataClasses1DataContext dc=new DataClasses1DataContext();
            //UserInfo userInfo=new UserInfo();
            //bool validLogin = dc.tbUsers.Any(a => a.Code == txtCode.Text && a.Password == txtPass.Text);
            //if (validLogin)
            //{
            //    Session["UserName"] = "Okie";
            //  Response.Redirect("~/Default.aspx");
            //}
            //else
            //{
            //    Session["UserName"] = "NG";
            //    Response.Redirect("~/Default.aspx");  
            //}

        }

        protected void lbtCancel_Click(object sender, EventArgs e)
        {

        }
    }
}