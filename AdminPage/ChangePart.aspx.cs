using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_LuongTheVinh
{
    public partial class ChangePart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtProgramName.Focus();
                 
            }
            txtProgramName.Attributes.Add("onkeypress", "return controlEnter('" + btnCheckProgramName.ClientID + "',event)"); 


        }

        protected void btnCheckProgramName_Click(object sender, EventArgs e)
        {
            string strModelName = txtProgramName.Text.Trim();
            txtModel.Focus();
        }

        protected void btnCheckModelName_Click(object sender, EventArgs e)
        {
            txtOpCode1.Focus();
        }
    }
}