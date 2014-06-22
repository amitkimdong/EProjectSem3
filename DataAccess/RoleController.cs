using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Entity;

namespace DataAccess
{
    public class RoleController: SqlDataProvider
    {
        //Get All
        public static DataTable GetAll()
        {
            string str = "Select * from tbRole";
            return GetData(str);
        }
        //Get by Id
        public static DataTable GetById(tbRoleInfo roleInfo)
        {
            string str = "Select * from tbRole where Id="+roleInfo.Id;
            return GetData(str);
        }
        //Get by column
        public static DataTable GetByColumn(string Col, string Pal)
        {
            int Param = int.Parse(Pal);
            string str = "Select * from tbRole where " + Col + "= " + "'" + Param + "'";
            return GetData(str);

        }
        //Them
        public static void Insert(tbRoleInfo obj)
        {
            string str = "Insert into tbRole(RoleName)";
            str = str + "Values(@RoleName)";
            
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = str;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add(new SqlParameter("@RoleName", obj.RoleName));
           
            ExecuteNonQuery(cmd);

        }
      

    
        //Sua
        public static void Update(tbRoleInfo obj)
        {

            string q = "UPDATE [tbRole] SET RoleName=@RoleName";
            q = q + " WHERE [Id] = @Id";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = q;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add(new SqlParameter("@Id", obj.Id));
            cmd.Parameters.Add(new SqlParameter("@RoleName", obj.RoleName));
            ExecuteNonQuery(cmd);

        }
        //Xoa
        public static void Delete(tbRoleInfo obj)
        {
            string q = "Delete from tbRole where Id=" + obj.Id;
            ExecuteNonQuery(q);
        }
    }
}
