using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Entity;
using DataAccess;
namespace Web_ClinicManage.News
{
    public partial class GroupNews : System.Web.UI.Page
    {
        static int Id = 0;
        static bool insert = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                _loadGroup();
            }
        }

        protected void AddButton_Click(object sender, EventArgs e)

        {
            insert = true;
            pnView.Visible = false;
            pnUpdate.Visible = true;
        }

        protected void grvUser_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            Id = int.Parse(e.CommandArgument.ToString());

            switch (e.CommandName)
            {
                case "Edit":
                    insert = false;
                    pnView.Visible = false;
                    pnUpdate.Visible = true;
                    lblAction.Text = "Update";
                    tbGroupNewInfo groupNewInfo=new tbGroupNewInfo();
                    groupNewInfo.Id = Id;
                    DataTable dt = GroupNewsController.GetByColumn("Id", Id.ToString());
                    txtName.Text = dt.Rows[0]["Name"].ToString();
                    txtTag.Text = dt.Rows[0]["Tag"].ToString();
                    txtLevel.Text = dt.Rows[0]["Level"].ToString();
                    txtTitle.Text = dt.Rows[0]["Title"].ToString();
                    txtDesciption.Text = dt.Rows[0]["Description"].ToString();
                    txtKeyword.Text = dt.Rows[0]["Keyword"].ToString();
                    txtOrd.Text = dt.Rows[0]["Ord"].ToString();
                    txtPriority.Text = dt.Rows[0]["Priority"].ToString();
                    txtIndex.Text = dt.Rows[0]["Index"].ToString();
                //    chkActive.Checked =Convert.ToBoolean(dt.Rows[0]["Active"].ToString());
                    txtLang.Text = dt.Rows[0]["Lang"].ToString();
                    

                    break;
                case "Delete":
                    tbGroupNewInfo obj=new tbGroupNewInfo();
                    obj.Id = Id;
                    GroupNewsController.Delete(obj);
                    pnUpdate.Visible = false;
                    pnView.Visible = true;
                    _loadGroup();
                    break;
            }
        }

      //-----------------Load gridview
        public void _loadGroup()
        {
            DataGrid1.DataSource = GroupNewsController.GetAll();
            DataGrid1.DataBind();
        }

        protected void RefreshButton_Click(object sender, EventArgs e)
        {
            _loadGroup();

        }

        protected void Update_Click(object sender, EventArgs e)
        {
            tbGroupNewInfo obj=new tbGroupNewInfo();
            obj.Name = txtName.Text;
            obj.Tag = txtTag.Text;
            obj.Level = txtLevel.Text;
            obj.Title = txtTitle.Text;
            obj.Description = txtDesciption.Text;
            obj.Keyword = txtKeyword.Text;
            obj.Ord = int.Parse(txtOrd.Text);
            obj.Priority = int.Parse(txtPriority.Text);
            obj.Index = int.Parse(txtIndex.Text);
            obj.Active = chkActive.Checked;
            obj.Lang = txtLang.Text;

            if (insert)
            {
               GroupNewsController.Insert(obj);
                pnView.Visible = true;
                pnUpdate.Visible = false;
                
            }
            else
            {
                obj.Id = Id;
               GroupNewsController.Update(obj);
               pnView.Visible = true;
               pnUpdate.Visible = false;
            }
            _loadGroup();
        }

        protected void lbtBackB_Click(object sender, EventArgs e)
        {
            pnView.Visible = true;
            pnUpdate.Visible = false;
        }

   
    }
}