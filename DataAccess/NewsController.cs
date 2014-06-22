using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Entity;
namespace DataAccess
{
    class NewsController:SqlDataProvider
    {

        public static DataTable GetAll()
        {
            string str = "select [Id],[Title],[Description],[Tag],[Image],[Detail],[Date],[Priority],[Index],";
            str=str+"[Active],[GroupNewsId],[Lang],[UserId] from [tbNews]";
            return GetData(str);
        }
        public static DataTable GetBy_Id(tbNewsInfo tbNews)
        {
            string str = "select [Id],[Title],[Description],[Tag],[Image],[Detail],[Date],[Priority],[Index],";
            str=str+"[Active],[GroupNewsId],[Lang],[UserId] from [tbNews] where [Id] = @Id";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = str;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add(new SqlParameter("@Id", tbNews.Id));
            return GetData(str);
        }

            
        public static DataTable GetByColumn(string Col, string Pal)
        {
            int Param = int.Parse(Pal);


            string str = "Select * from tbNews where " + Col + "= " + "'" + Param + "'";
            return GetData(str);

        }

        // dbCmd.Parameters.Add(new SqlParameter("@CusName", data.CusName));
        public static void Insert(tbNewsInfo tbNew)
        {
            string str = "insert into [tbNews]([Title],[Description],[Tag],[Image],[Detail],[Date],";
	        str=str+"[Priority],[Index],[Active],[GroupNewsId],[Lang],[UserId]) values (@Title,@Description,";
            str=str+"@Tag,@Image,@Detail,@Date,@Priority,@Index,@Active,@GroupNewsId,@Lang,@UserId)";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = str;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add(new SqlParameter("@Title", tbNew.Title));
            cmd.Parameters.Add(new SqlParameter("@Description", tbNew.Description));
            cmd.Parameters.Add(new SqlParameter("@Tag", tbNew.Tag));
            cmd.Parameters.Add(new SqlParameter("@Image", tbNew.Image));
            cmd.Parameters.Add(	new SqlParameter("@Detail", tbNew.Detail));
            cmd.Parameters.Add(new SqlParameter("@Date", tbNew.Date));
            cmd.Parameters.Add(	new SqlParameter("@Priority", tbNew.Priority));
            cmd.Parameters.Add(new SqlParameter("@Index", tbNew.Index));
            cmd.Parameters.Add(new SqlParameter("@Active", tbNew.Active));
            cmd.Parameters.Add(new SqlParameter("@GroupNewsId", tbNew.GroupNewsId));
            cmd.Parameters.Add(new SqlParameter("@Lang", tbNew.Lang));
            cmd.Parameters.Add(new SqlParameter("@UserId", tbNew.UserId));
            ExecuteNonQuery(cmd);

        }
        public static void Update(tbNewsInfo tbNew)
        {

            string q = "update [tbNews] set [Title] = @Title,[Description] = @Description,[Tag] = @Tag,";
	    q=q+"[Image] = @Image,[Detail] = @Detail,[Date] = @Date,[Priority] = @Priority,[Index] = @Index,";
        q=q+"[Active] = @Active,[GroupNewsId] = @GroupNewsId,[Lang] = @Lang,[UserId] = @UserId where [Id] = @Id";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = q;
        cmd.Connection = GetConnection();
        cmd.Parameters.Add(new SqlParameter("@Title", tbNew.Title));
        cmd.Parameters.Add(new SqlParameter("@Description", tbNew.Description));
        cmd.Parameters.Add(new SqlParameter("@Tag", tbNew.Tag));
        cmd.Parameters.Add(new SqlParameter("@Image", tbNew.Image));
        cmd.Parameters.Add(new SqlParameter("@Detail", tbNew.Detail));
        cmd.Parameters.Add(new SqlParameter("@Date", tbNew.Date));
        cmd.Parameters.Add(new SqlParameter("@Priority", tbNew.Priority));
        cmd.Parameters.Add(new SqlParameter("@Index", tbNew.Index));
        cmd.Parameters.Add(new SqlParameter("@Active", tbNew.Active));
        cmd.Parameters.Add(new SqlParameter("@GroupNewsId", tbNew.GroupNewsId));
        cmd.Parameters.Add(new SqlParameter("@Lang", tbNew.Lang));
        cmd.Parameters.Add(new SqlParameter("@UserId", tbNew.UserId));
        cmd.Parameters.Add(new SqlParameter("@Id", tbNew.Id));

        ExecuteNonQuery(cmd);

        }

        public static void Delete(tbUserInfo obj)
        {
            string q = "Delete from tbNews where Id=" + obj.Id;
            ExecuteNonQuery(q);
        }

        //public static DataTable search(tbUserInfo obj)
        //{
        //    //string str = "Select * from tbUser,tbRole where tbRole.Id=tbUser.RoleId and ";
        //    //str = str + "FullName like '%'+ '" + obj.Name + "' + '%'";
        //    //return GetData(str);
        //    ////  string strSearch = "select * from tblModel where ModelName like '%'+'" + txtSearch.Text + "'+'%'";

        //}
    }
}
