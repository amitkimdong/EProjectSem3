using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using Entity;

namespace DataAccess
{
    public class Bill_CustomersController:SqlDataProvider
    {
        public static DataTable GetAll()
        {
            string str = "select * from tbBill_Customers";
            return GetData(str);
        }
        public static DataTable GetBy_Id(tbBill_CustomerInfo Bill_Customer)
        {
            string str = "select * from [tbBill_Customers] where [Id]=" + Bill_Customer.Id;
            return GetData(str);
        }


        public static DataTable GetByColumn(string Col, string Pal)
        {
            int Param = int.Parse(Pal);
            string str = "Select * from tbBill_Customers where " + Col + "= " + "'" + Param + "'";
            return GetData(str);

        }

        // dbCmd.Parameters.Add(new SqlParameter("@CusName", data.CusName));
        public static void Insert(tbBill_CustomerInfo tbBill_Customer)
        {
            string q = "insert into [tbBill_Customers] ([CuIsd],[totalmoney],[idate],[xdate],[request],";
            q = q + "[typepay],[state],[lang],[show])values(@CusId,@totalmoney,@idate,";
            q=q+"@xdate,@request,@typepay,@state,@lang,@show)";

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = q;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add( new SqlParameter("@CusId", tbBill_Customer.CusId));
            cmd.Parameters.Add(	new SqlParameter("@totalmoney", tbBill_Customer.Totalmoney));
            cmd.Parameters.Add(new SqlParameter("@idate", tbBill_Customer.Idate));
            cmd.Parameters.Add(new SqlParameter("@xdate", tbBill_Customer.Xdate));
            cmd.Parameters.Add(new SqlParameter("@request", tbBill_Customer.Request));
            cmd.Parameters.Add(new SqlParameter("@typepay", tbBill_Customer.Typepay));
            cmd.Parameters.Add(new SqlParameter("@state", tbBill_Customer.State));
            cmd.Parameters.Add(new SqlParameter("@lang", tbBill_Customer.Lang));
            cmd.Parameters.Add(new SqlParameter("@show", tbBill_Customer.Show));
            ExecuteNonQuery(cmd);

        }
        public static void Update(tbBill_CustomerInfo tbBill_Customer)
        {

            string q = "update [tbBill_Customers] set [CusId] = @CusId,[totalmoney] = @totalmoney,";
            q=q+"[idate] = @idate,[xdate] = @xdate,[request] = @request,[typepay] = @typepay,[state] = @state,";
            q=q+"[lang] = @lang,[show] = @show where Id = @Id";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = q;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add(new SqlParameter("@CusId", tbBill_Customer.CusId));
            cmd.Parameters.Add(new SqlParameter("@totalmoney", tbBill_Customer.Totalmoney));
            cmd.Parameters.Add(new SqlParameter("@idate", tbBill_Customer.Idate));
            cmd.Parameters.Add(new SqlParameter("@xdate", tbBill_Customer.Xdate));
            cmd.Parameters.Add(new SqlParameter("@request", tbBill_Customer.Request));
            cmd.Parameters.Add(new SqlParameter("@typepay", tbBill_Customer.Typepay));
            cmd.Parameters.Add(new SqlParameter("@state", tbBill_Customer.State));
            cmd.Parameters.Add(new SqlParameter("@lang", tbBill_Customer.Lang));
            cmd.Parameters.Add(new SqlParameter("@show", tbBill_Customer.Show));
            cmd.Parameters.Add(new SqlParameter("@Id", tbBill_Customer.Id));

            ExecuteNonQuery(cmd);

        }

        public static void Delete(tbCategoryInfo tbCategory)
        {
            string q = "Delete from tbBill_Customers where Id=" + tbCategory.Id;
            ExecuteNonQuery(q);
        }
    }
}
