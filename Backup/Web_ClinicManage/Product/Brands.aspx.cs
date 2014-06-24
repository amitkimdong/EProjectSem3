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
namespace Web_ClinicManage.Product
{
    public partial class Brands : System.Web.UI.Page
    {
        public static int Id;
        public static bool Insert= false;


        protected void Page_Load(object sender, EventArgs e)
        {
            _LoadBrand();
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            pnView.Visible = false;
            pnUpdate.Visible = true;
            Insert = true;
        }

        public void _LoadBrand()
        {
            DataGrid1.DataSource = BrandsController.GetAll();
            DataGrid1.DataBind();
        }

        protected void RefreshButton_Click(object sender, EventArgs e)
        {
            _LoadBrand();
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            if (Insert)
            {
                //Thuc hien Insert
            }
            else
            {
                //Thuc hien Cap Nhat
            }
        }

        protected void lbtBackB_Click(object sender, EventArgs e)
        {
            pnView.Visible = true;
            pnUpdate.Visible = false;
        }

        protected void grvUser_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            Id = int.Parse(e.CommandArgument.ToString());
            switch (e.CommandName)
            {
                case "Edit":
                    DataTable dt = BrandsController.GetByColumn("Id", Id.ToString());
                    txtName.Text = dt.Rows[0]["Name"].ToString();
                    txtLogo.Text = dt.Rows[0]["Logo"].ToString();
                    txtOrd.Text = dt.Rows[0]["Ord"].ToString();
                    txtLang.Text = dt.Rows[0]["Lang"].ToString();

                    break;
                case "Delete":
                  tbBrandInfo obj=new tbBrandInfo();
                    obj.Id = Id;
                   BrandsController.Delete(obj);
                   _LoadBrand();
                    break;
                    
            }
        }
    }
}