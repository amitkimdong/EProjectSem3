using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using Entity;

namespace DataAccess
{
    public class CommentProductController:SqlDataProvider
    {
        public static DataTable GetAll()
        {
            string str = "select * from tbCategory";
            return GetData(str);
        }
        public static DataTable GetBy_Id(tbCommentProducInfo tb)
        {
            string str = "select * from [tbCommentProduct] where [Id]=" + tb.Id;
            return GetData(str);
        }


        public static DataTable GetByColumn(string Col, string Pal)
        {
            int Param = int.Parse(Pal);


            string str = "Select * from tbCommentProduct where " + Col + "= " + "'" + Param + "'";
            return GetData(str);

        }

        // dbCmd.Parameters.Add(new SqlParameter("@CusName", data.CusName));
        public static void Insert(tbCommentProducInfo tbCommentProduc)
        {
            string q = "insert into [tbCommentProduct]([ProId],[Name],[Email],[Point],[Content],";
            q = q + "[Date],[Active]) values(@ProId,@Name,@Email,@Point,";
            q=q+"@Content,@Date,@Active)";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = q;
            cmd.Connection = GetConnection();
           cmd.Parameters.Add( new SqlParameter("@ProId", tbCommentProduc.ProId));
                cmd.Parameters.Add(new SqlParameter("@Name", tbCommentProduc.Name));
                cmd.Parameters.Add(new SqlParameter("@Email", tbCommentProduc.Email));
                cmd.Parameters.Add(new SqlParameter("@Point", tbCommentProduc.Point));
                cmd.Parameters.Add(new SqlParameter("@Content", tbCommentProduc.Content));
                cmd.Parameters.Add(new SqlParameter("@Date", tbCommentProduc.Date));
                cmd.Parameters.Add(new SqlParameter("@Active", tbCommentProduc.Active));
                ExecuteNonQuery(cmd);

        }
        public static void Update(tbCommentProducInfo tbCommentProduc)
        {

            string q = "update [tbCommentProduct] set [ProId] = @ProId,[Name] = @Name,[Email] = @Email,";
            q=q+"[Point] = @Point,[Content] = @Content,[Date] = @Date,[Active] = @Active where [Id] = @Id";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = q;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add(new SqlParameter("@ProId", tbCommentProduc.ProId));
            cmd.Parameters.Add(new SqlParameter("@Name", tbCommentProduc.Name));
            cmd.Parameters.Add(new SqlParameter("@Email", tbCommentProduc.Email));
            cmd.Parameters.Add(new SqlParameter("@Point", tbCommentProduc.Point));
            cmd.Parameters.Add(new SqlParameter("@Content", tbCommentProduc.Content));
            cmd.Parameters.Add(new SqlParameter("@Date", tbCommentProduc.Date));
            cmd.Parameters.Add(new SqlParameter("@Active", tbCommentProduc.Active));
            cmd.Parameters.Add(new SqlParameter("@Id", tbCommentProduc.Id));

            ExecuteNonQuery(cmd);

        }

        public static void Delete(tbCategoryInfo tbCategory)
        {
            string q = "Delete from tbCommentProduct where Id=" + tbCategory.Id;
            ExecuteNonQuery(q);
        }

    }
}
