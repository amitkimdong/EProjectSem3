using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using Entity;

namespace DataAccess
{
   public class BillDetailController:SqlDataProvider
    {
        public static DataTable GetAll()
        {
            string str = "select * from tbBillDetail";
            return GetData(str);
        }
        public static DataTable GetBy_Id(tbCategoryInfo tbCategory)
        {
            string str = "select * from [tbBillDetail] where [Id]=" + tbCategory.Id;
            return GetData(str);
        }


        public static DataTable GetByColumn(string Col, string Pal)
        {
            int Param = int.Parse(Pal);


            string str = "Select * from tbBillDetail where " + Col + "= " + "'" + Param + "'";
            return GetData(str);

        }

        // dbCmd.Parameters.Add(new SqlParameter("@CusName", data.CusName));
        public static void Insert(tbBilldetailInfo tbBilldetail)
        {
            string q = "insert into [tbBilldetail]([bilid],[proid],[sizeid],[colorid],[quantity],";
            q = q + "[bilprice],[bilpricevnd],[bilmoney],[billlocation],[Date],[status])values(";
            q = q + "@bilid,@proid,@sizeid,@colorid,@quantity,@bilprice,@bilpricevnd,@bilmoney,";
            q=q+"@billlocation,@Date,@status)";

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = q;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add(new SqlParameter("@bilid", tbBilldetail.Bilid));
            cmd.Parameters.Add(new SqlParameter("@proid", tbBilldetail.Proid));
            cmd.Parameters.Add(new SqlParameter("@sizeid", tbBilldetail.Sizeid));
            cmd.Parameters.Add(new SqlParameter("@colorid", tbBilldetail.Colorid));
            cmd.Parameters.Add(new SqlParameter("@quantity", tbBilldetail.Quantity));
            cmd.Parameters.Add(new SqlParameter("@bilprice", tbBilldetail.Bilprice));
            cmd.Parameters.Add(new SqlParameter("@bilpricevnd", tbBilldetail.Bilpricevnd));
            cmd.Parameters.Add(new SqlParameter("@bilmoney", tbBilldetail.Bilmoney));
            cmd.Parameters.Add(new SqlParameter("@billlocation", tbBilldetail.Billlocation));
            cmd.Parameters.Add(new SqlParameter("@Date", tbBilldetail.Date));
            cmd.Parameters.Add(new SqlParameter("@status", tbBilldetail.Status));
            
            ExecuteNonQuery(cmd);

        }
        public static void Update(tbBilldetailInfo tbBilldetail)
        {

            string q = "update [tbBilldetail] set [bilid] = @bilid,[proid] = @proid,[sizeid] = @sizeid,";
	        q=q+"[colorid] = @colorid,[quantity] = @quantity,[bilprice] = @bilprice,[bilpricevnd] = @bilpricevnd,";
            q = q + "[bilmoney] = @bilmoney,[billlocation] = @billlocation,[Date] = @Date,";
            q=q+"[status] = @status where [id] = @id";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = q;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add(new SqlParameter("@bilid", tbBilldetail.Bilid));
            cmd.Parameters.Add(new SqlParameter("@proid", tbBilldetail.Proid));
            cmd.Parameters.Add(new SqlParameter("@sizeid", tbBilldetail.Sizeid));
            cmd.Parameters.Add(new SqlParameter("@colorid", tbBilldetail.Colorid));
            cmd.Parameters.Add(new SqlParameter("@quantity", tbBilldetail.Quantity));
            cmd.Parameters.Add(new SqlParameter("@bilprice", tbBilldetail.Bilprice));
            cmd.Parameters.Add(new SqlParameter("@bilpricevnd", tbBilldetail.Bilpricevnd));
            cmd.Parameters.Add(new SqlParameter("@bilmoney", tbBilldetail.Bilmoney));
            cmd.Parameters.Add(new SqlParameter("@billlocation", tbBilldetail.Billlocation));
            cmd.Parameters.Add(new SqlParameter("@Date", tbBilldetail.Date));
            cmd.Parameters.Add(new SqlParameter("@status", tbBilldetail.Status));
            cmd.Parameters.Add(new SqlParameter("@Id", tbBilldetail.Id));

            ExecuteNonQuery(cmd);

        }

        public static void Delete(tbCategoryInfo tbCategory)
        {
            string q = "Delete from tbBilldetail where Id=" + tbCategory.Id;
            ExecuteNonQuery(q);
        }
    }
}
