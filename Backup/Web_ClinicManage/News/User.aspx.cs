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
    public partial class User : System.Web.UI.Page
    {
        static bool insert = false;
        static string Id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                _LoadUser();
                _LoadRole();

            }
        }
        #region --------------------Khởi tạo cho cac đối tượng:DataGrid,DropdownList--------------------------------
        public void _LoadUser()
        {
           grvUser.DataSource = UserController.GetAll();
           grvUser.DataBind();

        }
        public void _LoadRole()
        {

            ddlRole.DataValueField = "Id";
            ddlRole.DataTextField = "RoleName";
            ddlRole.DataSource = RoleController.GetAll();
            ddlRole.DataBind();
        }
        #endregion

        #region -------------------Thêm Sửa xóa-----------------------------------------------------------
        protected void Update_Click(object sender, EventArgs e)
        {
            tbUserInfo obj = new tbUserInfo();
           
            obj.Name = txtName.Text;
            obj.Username = txtUserName.Text;
            obj.Address = txtAddress.Text;
            obj.Email = txtEmail.Text;
            obj.Phone = txtPhone.Text;
            obj.Active = chkActive.Checked;
            obj.RoleId =int.Parse
                (ddlRole.SelectedValue.ToString());
            obj.Password = txtPass.Text;
            obj.Id = int.Parse(Id);
            if (insert)
            {
                UserController.Insert(obj);
            }
            else
            {
                obj.Id = int.Parse(Id);
                UserController.Update(obj);
            }
            pnView.Visible = true;
            pnUpdate.Visible = false;
            _LoadUser();
        }
        //Xóa với nhiều dòng
        protected void DeleteButton_Click(object sender, EventArgs e)
        {

        }
        protected void grvUser_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            string strId = e.CommandArgument.ToString();
            switch (e.CommandName)
            {
                case "Edit":
                    insert = false;
                    ViewInput(true);
                    lblAction.Text = "Update User";
                    Id = strId;

                    DataTable dt = UserController.GetByColumn("Id",strId);
                   txtName.Text = dt.Rows[0]["Name"].ToString();
                   txtUserName.Text = dt.Rows[0]["UserName"].ToString();
                   txtAddress.Text = dt.Rows[0]["Address"].ToString();
                    txtEmail.Text = dt.Rows[0]["Email"].ToString();
                    txtPhone.Text = dt.Rows[0]["Phone"].ToString();
                    chkActive.Checked = bool.Parse(dt.Rows[0]["Active"].ToString());
                    

                    break;


                case "Delete":
                    tbUserInfo obj = new tbUserInfo();
                    obj.Id = int.Parse(strId);
                    UserController.Delete(obj);
                    ViewInput(false); 
                 
                    break;

            }
            _LoadUser();
        }

        #endregion

        #region ----------------Tìm kiếm theo tên------------------------------------
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //////DataClasses1DataContext dc = new DataClasses1DataContext();
            //////var q = from p in dc.tbUsers
            //////        where p.FullName.IndexOf(txtSearch.Text) > 0
            //////        select p;

            ////tbUserInfo ob = new tbUserInfo();
            ////ob.FullName = txtSearch.Text;
            ////grvUser.DataSource = UserController.search(ob);
            ////grvUser.DataBind();


        }
        #endregion

        #region ----------------------------Chức năng hỗ trợ------------------

        //Hiện phần thêm
        protected void AddButton_Click(object sender, EventArgs e)
        {
          ViewInput(true);
            insert = true;
        }

        //Refress Gridview
        protected void RefreshButton_Click(object sender, EventArgs e)
        {
            _LoadUser();
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            ViewInput(false);
            

        }

        #endregion

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
    }
}