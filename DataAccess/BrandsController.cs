using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using Entity;

namespace DataAccess
{
   public class BrandsController:SqlDataProvider
    {
        public static DataTable GetAll()
        {
            string str = "select * from tbBrands";
            return GetData(str);
        }
        public static DataTable GetBy_Id(tbBrandInfo tbBrand)
        {
            string str = "select * from [tbBrands] where [Id]="+tbBrand.Id;
            return GetData(str);
        }


        public static DataTable GetByColumn(string Col, string Pal)
        {
            int Param = int.Parse(Pal);


            string str = "Select * from tbBrands where " + Col + "= " + "'" + Param + "'";
            return GetData(str);

        }

        // dbCmd.Parameters.Add(new SqlParameter("@CusName", data.CusName));
        public static void Insert(tbBrandInfo tbBrand)
        {
            string q = "insert into [tbBrands]([Name],[Logo],[Ord],[Lang]) values(@Name,@Logo,@Ord,@Lang))";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = q;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add(	new SqlParameter("@Name", tbBrand.Name));
              cmd.Parameters.Add(new SqlParameter("@Logo", tbBrand.Logo));
              cmd.Parameters.Add(new SqlParameter("@Ord", tbBrand.Ord));
              cmd.Parameters.Add(new SqlParameter("@Lang", tbBrand.Lang));
            ExecuteNonQuery(cmd);

        }
        public static void Update(tbBrandInfo tbBrand)
        {

            string q = "update [tbBrands] set [Name] = @Name,[Logo] = @Logo,[Ord] = @Ord,[Lang] = @Lang where [Id] = Id ";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = q;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add(new SqlParameter("@Name", tbBrand.Name));
            cmd.Parameters.Add(new SqlParameter("@Logo", tbBrand.Logo));
            cmd.Parameters.Add(new SqlParameter("@Ord", tbBrand.Ord));
            cmd.Parameters.Add(new SqlParameter("@Lang", tbBrand.Lang));
            cmd.Parameters.Add(new SqlParameter("@Id", tbBrand.Id));

            ExecuteNonQuery(cmd);

        }

        public static void Delete(tbBrandInfo obj)
        {
            string q = "Delete from tbBrands where Id=" + obj.Id;
            ExecuteNonQuery(q);
        }
    }
}
