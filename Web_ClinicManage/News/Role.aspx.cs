using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DataAccess;
using Entity;
namespace Web_ClinicManage.News
{
    public partial class Role : System.Web.UI.Page
    {
        static bool insert = false;
        static string Id = "";
    
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {           
                _LoadRole();
            }
        }

        #region Load cac điều khiển
        public void _LoadRole()
        {

            DataGrid1.DataSource = RoleController.GetAll();
            DataGrid1.DataBind();
        }
        #endregion
      
        protected void RefreshButton_Click(object sender, EventArgs e)
        {
            _LoadRole();
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            insert = true;
            pnUpdate.Visible = true;
            pnView.Visible = false;
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            tbRoleInfo ro = new tbRoleInfo();
            ro.RoleName = txtRoleName.Text;
            if (insert)
            {
                RoleController.Insert(ro);
                _LoadRole();
                ViewInput(false);
                
            }
            else //Update
            {

                ro.Id = int.Parse(Id);
             
                RoleController.Update(ro);
                _LoadRole();
                ViewInput(false);
            }
        }

        protected void Back_Click(object sender, EventArgs e)
        {

        }

        public void ViewInput(bool act)
        {
            if (act)
            {
                pnView.Visible = false;
                pnUpdate.Visible = true;    
            }
            else
            {
                pnView.Visible = true;
                pnUpdate.Visible = false;    
            }
            
        }
        protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            Id = e.CommandArgument.ToString();

            switch (e.CommandName)
            {
                case "Edit":
                    insert = false;
                    ViewInput(true);
                    lblAction.Text = "Update Role";

                    tbRoleInfo roleInfo = new tbRoleInfo();
                    roleInfo.Id = int.Parse(Id);
                    DataTable dt = RoleController.GetById(roleInfo);
                    txtRoleName.Text = dt.Rows[0]["RoleName"].ToString();

                    break;
                case "Delete":
                    tbRoleInfo obj = new tbRoleInfo();
                    obj.Id = int.Parse(Id);
                    RoleController.Delete(obj);
                    pnUpdate.Visible = false;
                    pnView.Visible = true;
                    _LoadRole();
                    break;
            }
        }

   
    }
}