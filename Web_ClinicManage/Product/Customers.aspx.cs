using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;
using Entity;
namespace Web_ClinicManage.Product
{
    public partial class Customers : System.Web.UI.Page
    {
    
        protected void Page_Load(object sender, EventArgs e)
        {
            _Getdata();
        }
        public void _Getdata()
        {
            string str = "SELECT *  FROM tbCustomers";
            GridView1.DataSource = DataAccess.GetData(str);
            GridView1.DataBind();
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            string str = "INSERT INTO tbCustomers(UserName,[PassWord]) VALUES('"+txtUserName.Text+"','"+txtPass.Text+"')";
            DataAccess.ExecuteNonQuery(str);
            _Getdata();

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string str = "DELETE FROM tbCustomers WHERE id='"+ int.Parse(txtId.Text)+"'";
            DataAccess.ExecuteNonQuery(str);
            _Getdata();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtId.Text = GridView1.SelectedRow.Cells[0].Text;
            txtUserName.Text = GridView1.SelectedRow.Cells[1].Text;
            txtPass.Text = GridView1.SelectedRow.Cells[2].Text;
        }

      
    }
}