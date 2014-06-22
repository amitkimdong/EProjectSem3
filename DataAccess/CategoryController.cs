using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using Entity;
using System.Data;
namespace DataAccess
{
   public class CategoryController:SqlDataProvider
    {
        public static DataTable GetAll()
        {
            string str = "select * from tbCategory";
            return GetData(str);
        }
        public static DataTable GetBy_Id(tbCategoryInfo tbCategory)
        {
            string str = "select * from [tbBrands] where [Id]=" + tbCategory.Id;
            return GetData(str);
        }


        public static DataTable GetByColumn(string Col, string Pal)
        {
            int Param = int.Parse(Pal);


            string str = "Select * from tbCategory where " + Col + "= " + "'" + Param + "'";
            return GetData(str);

        }

        // dbCmd.Parameters.Add(new SqlParameter("@CusName", data.CusName));
        public static void Insert(tbCategoryInfo tbCategory)
        {
            string q = "insert into [tbCategory]([Tag],[Name],[Content],[Level],[Priority],[Index],";
            q = q + "[Image],[Title],[Description],[Keyword],[Active],[Ord],[Lang],[Image2]) values(@Tag,@Name,";
            q = q + "@Content,@Level,@Priority,@Index,@Image,@Title,@Description,@Keyword,";
            q=q+"@Active,@Ord,@Lang,@Image2)";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = q;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add(new SqlParameter("@Tag", tbCategory.Tag));
            cmd.Parameters.Add(new SqlParameter("@Name", tbCategory.Name));
            cmd.Parameters.Add(new SqlParameter("@Content", tbCategory.Content));
            cmd.Parameters.Add(new SqlParameter("@Level", tbCategory.Level));
            cmd.Parameters.Add(new SqlParameter("@Priority", tbCategory.Priority));
            cmd.Parameters.Add(new SqlParameter("@Index", tbCategory.Index));
            cmd.Parameters.Add(new SqlParameter("@Image", tbCategory.Image));
            cmd.Parameters.Add(new SqlParameter("@Title", tbCategory.Title));
            cmd.Parameters.Add(new SqlParameter("@Description", tbCategory.Description));
            cmd.Parameters.Add(new SqlParameter("@Keyword", tbCategory.Keyword));
            cmd.Parameters.Add(new SqlParameter("@Active", tbCategory.Active));
            cmd.Parameters.Add(new SqlParameter("@Ord", tbCategory.Ord));
            cmd.Parameters.Add(new SqlParameter("@Lang", tbCategory.Lang));
            cmd.Parameters.Add(new SqlParameter("@Image2", tbCategory.Image2));       
            ExecuteNonQuery(cmd);

        }
        public static void Update(tbCategoryInfo tbCategory)
        {

            string q = "update [tbCategory] set [Tag] = @Tag,[Name] = @Name,[Content] = @Content,[Level] = @Level,";
            q=q+"[Priority] = @Priority,[Index] = @Index,[Image] = @Image,[Title] = @Title,";
	        q=q+"[Description] = @Description,[Keyword] = @Keyword,[Active] = @Active,[Ord] = @Ord,";
	        q=q+"[Lang] = @Lang,[Image2] = @Image2 where [Id] = @Id ";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = q;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add(new SqlParameter("@Tag", tbCategory.Tag));
            cmd.Parameters.Add(new SqlParameter("@Name", tbCategory.Name));
            cmd.Parameters.Add(new SqlParameter("@Content", tbCategory.Content));
            cmd.Parameters.Add(new SqlParameter("@Level", tbCategory.Level));
            cmd.Parameters.Add(new SqlParameter("@Priority", tbCategory.Priority));
            cmd.Parameters.Add(new SqlParameter("@Index", tbCategory.Index));
            cmd.Parameters.Add(new SqlParameter("@Image", tbCategory.Image));
            cmd.Parameters.Add(new SqlParameter("@Title", tbCategory.Title));
            cmd.Parameters.Add(new SqlParameter("@Description", tbCategory.Description));
            cmd.Parameters.Add(new SqlParameter("@Keyword", tbCategory.Keyword));
            cmd.Parameters.Add(new SqlParameter("@Active", tbCategory.Active));
            cmd.Parameters.Add(new SqlParameter("@Ord", tbCategory.Ord));
            cmd.Parameters.Add(new SqlParameter("@Lang", tbCategory.Lang));
            cmd.Parameters.Add(new SqlParameter("@Image2", tbCategory.Image2));
            cmd.Parameters.Add(new SqlParameter("@Id", tbCategory.Id));

            ExecuteNonQuery(cmd);

        }

        public static void Delete(tbCategoryInfo tbCategory)
        {
            string q = "Delete from tbCategory where Id=" + tbCategory.Id;
            ExecuteNonQuery(q);
        }
    }
}
