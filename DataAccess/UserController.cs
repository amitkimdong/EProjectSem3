using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Entity;
namespace DataAccess
{
    public class UserController : SqlDataProvider
    {
        public static DataTable GetAll()
        {
            string str = "Select * from tbUser";
            return GetData(str);
        }

        public static DataTable GetByColumn(string Col, string Pal)
        {
            int Param = int.Parse(Pal);
            string str = "Select * from tbUser where " + Col + "= " + "'" + Param + "'";
            return GetData(str);

        }

        // dbCmd.Parameters.Add(new SqlParameter("@CusName", data.CusName));
        public static void Insert(tbUserInfo tbUser)
        {
            string str = "insert into [tbUser] ([Name],[Username],[Password],[Address],[Email],";
            str = str + "[Phone],[Active],[RoleId]) values (@Name,@Username,@Password,";
            str = str + "@Address,@Email,@Phone,@Active,@RoleId)";
            
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = str;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add(new SqlParameter("@Name", tbUser.Name));
            cmd.Parameters.Add(new SqlParameter("@Username", tbUser.Username));
            cmd.Parameters.Add(new SqlParameter("@Password", tbUser.Password));
          
            cmd.Parameters.Add(new SqlParameter("@Address", tbUser.Address));
            cmd.Parameters.Add(new SqlParameter("@Email", tbUser.Email));
            cmd.Parameters.Add(new SqlParameter("@Phone", tbUser.Phone));
            cmd.Parameters.Add(new SqlParameter("@Active", tbUser.Active));
            cmd.Parameters.Add(new SqlParameter("@RoleId", tbUser.RoleId));
            
            ExecuteNonQuery(cmd);

        }
        public static void Update(tbUserInfo tbUser)
        {

            string q = "update [tbUser] set [Name] = @Name, [Username] = @Username,[Password] = @Password,";
	q=q+"[Address] = @Address,[Email] = @Email,[Phone] = @Phone,[Active] = @Active,";
	q=q+"[RoleId] = @RoleId where [Id] = @Id";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = q;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add(new SqlParameter("@Name", tbUser.Name));
            cmd.Parameters.Add(new SqlParameter("@Username", tbUser.Username));
            cmd.Parameters.Add(new SqlParameter("@Password", tbUser.Password));
      
            cmd.Parameters.Add(new SqlParameter("@Address", tbUser.Address));
            cmd.Parameters.Add(new SqlParameter("@Email", tbUser.Email));
            cmd.Parameters.Add(new SqlParameter("@Phone", tbUser.Phone));
            cmd.Parameters.Add(new SqlParameter("@Active", tbUser.Active));
            cmd.Parameters.Add(new SqlParameter("@RoleId", tbUser.RoleId));
            cmd.Parameters.Add(new SqlParameter("@Id", tbUser.Id));
            ExecuteNonQuery(cmd);

        }

        public static void Delete(tbUserInfo obj)
        {
            string q = "Delete from tbUser where Id=" + obj.Id;
            ExecuteNonQuery(q);
        }

        public static DataTable search(tbUserInfo obj)
        {
            string str = "Select * from tbUser,tbRole where tbRole.Id=tbUser.RoleId and ";
            str = str + "FullName like '%'+ '" + obj.Name + "' + '%'";
            return GetData(str);
            //  string strSearch = "select * from tblModel where ModelName like '%'+'" + txtSearch.Text + "'+'%'";

        }
    }
}
