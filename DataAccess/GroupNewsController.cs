using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Entity;

namespace DataAccess
{
   public class GroupNewsController:SqlDataProvider
    {
        public static DataTable GetAll()
        {
            string str = "select * from tbGroupNews";
            return GetData(str);
        }
      
        public static DataTable GetByColumn(string Col, string Pal)
        {
            int Param = int.Parse(Pal);


            string str = "Select * from tbGroupNews where " + Col + "= " + "'" + Param + "'";
            return GetData(str);

        }

        // dbCmd.Parameters.Add(new SqlParameter("@CusName", data.CusName));
        public static void Insert(tbGroupNewInfo tbGroupNew)
        {
            string q = "insert into [tbGroupNews]([Name],[Tag],[Level],[Title],[Description],[Keyword],[Ord],";
            q = q + "[Priority],[Index],[Active],[Lang]) values ";
            q=q+"(@Name,@Tag,@Level,@Title,@Description,@Keyword,@Ord,@Priority,";
            q=q+"@Index,@Active,@Lang)";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = q;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add(new SqlParameter("@Name", tbGroupNew.Name));
            cmd.Parameters.Add(new SqlParameter("@Tag", tbGroupNew.Tag));
            cmd.Parameters.Add(new SqlParameter("@Level", tbGroupNew.Level));
            cmd.Parameters.Add(new SqlParameter("@Title", tbGroupNew.Title));
            cmd.Parameters.Add(new SqlParameter("@Description", tbGroupNew.Description));
            cmd.Parameters.Add(new SqlParameter("@Keyword", tbGroupNew.Keyword));
            cmd.Parameters.Add(new SqlParameter("@Ord", tbGroupNew.Ord));
            cmd.Parameters.Add(new SqlParameter("@Priority", tbGroupNew.Priority));
            cmd.Parameters.Add(new SqlParameter("@Index", tbGroupNew.Index));
            cmd.Parameters.Add(new SqlParameter("@Active", tbGroupNew.Active)); 
            cmd.Parameters.Add(new SqlParameter("@Lang", tbGroupNew.Lang));
            ExecuteNonQuery(cmd);

        }
        public static void Update(tbGroupNewInfo tbGroupNew)
        {

            string q = "update [tbGroupNews] set [Name] = @Name,[Tag] = @Tag,[Level] = @Level,[Title] = @Title,";
	q=q+"[Description] = @Description,[Keyword] = @Keyword,[Ord] = @Ord,[Priority] = @Priority,";
	q=q+"[Index] = @Index,[Active] = @Active,[Lang] = @Lang where [Id] = @Id ";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = q;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add(new SqlParameter("@Name", tbGroupNew.Name));
            cmd.Parameters.Add(new SqlParameter("@Tag", tbGroupNew.Tag));
            cmd.Parameters.Add(new SqlParameter("@Level", tbGroupNew.Level));
            cmd.Parameters.Add(new SqlParameter("@Title", tbGroupNew.Title));
            cmd.Parameters.Add(new SqlParameter("@Description", tbGroupNew.Description));
            cmd.Parameters.Add(new SqlParameter("@Keyword", tbGroupNew.Keyword));
            cmd.Parameters.Add(new SqlParameter("@Ord", tbGroupNew.Ord));
            cmd.Parameters.Add(new SqlParameter("@Priority", tbGroupNew.Priority));
            cmd.Parameters.Add(new SqlParameter("@Index", tbGroupNew.Index));
            cmd.Parameters.Add(new SqlParameter("@Active", tbGroupNew.Active));
            cmd.Parameters.Add(new SqlParameter("@Lang", tbGroupNew.Lang));
            cmd.Parameters.Add(new SqlParameter("@Id", tbGroupNew.Id));

            ExecuteNonQuery(cmd);

        }

        public static void Delete(tbGroupNewInfo obj)
        {
            string q = "Delete from tbGroupNews where Id=" + obj.Id;
            ExecuteNonQuery(q);
        }
    }
}
