using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using Entity;

namespace DataAccess
{
   public class CustomersController:SqlDataProvider
    {
        public static DataTable GetAll()
        {
            string str = "select * from tbCustomers";
            return GetData(str);
        }
        public static DataTable GetBy_Id(tbCustomerInfo tbCustomer)
        {
            string str = "select * from tbCustomers where [Id]=" + tbCustomer.Id;
            return GetData(str);
        }


        public static DataTable GetByColumn(string Col, string Pal)
        {
            int Param = int.Parse(Pal);
            string str = "Select * from tbCustomers where " + Col + "= " + "'" + Param + "'";
            return GetData(str);

        }

        // dbCmd.Parameters.Add(new SqlParameter("@CusName", data.CusName));
        public static void Insert(tbCustomerInfo tbCustomer)
        {
            string q = "insert into [tbCustomers] ([UserName],[PassWord],[CusName],[BirthDay],[Address],";
            q = q + "[Phone],[Mobile],[Email],[CreatDate],[Status]) values(@UserName,@PassWord,@CusName,";
            q=q+"@BirthDay,@Address,@Phone,@Mobile,@Email,@CreatDate,@Status)";

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = q;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add(new SqlParameter("@UserName", tbCustomer.UserName));
              cmd.Parameters.Add(new SqlParameter("@PassWord", tbCustomer.PassWord));
              cmd.Parameters.Add(new SqlParameter("@CusName", tbCustomer.CusName));
              cmd.Parameters.Add(new SqlParameter("@BirthDay", tbCustomer.BirthDay));
              cmd.Parameters.Add(new SqlParameter("@Address", tbCustomer.Address));
              cmd.Parameters.Add(new SqlParameter("@Phone", tbCustomer.Phone));
              cmd.Parameters.Add(new SqlParameter("@Mobile", tbCustomer.Mobile));
              cmd.Parameters.Add(new SqlParameter("@Email", tbCustomer.Email));
              cmd.Parameters.Add(new SqlParameter("@CreatDate", tbCustomer.CreatDate));
              cmd.Parameters.Add(new SqlParameter("@Status", tbCustomer.Status));          

            ExecuteNonQuery(cmd);

        }
        public static void Update(tbCustomerInfo tbCustomer)
        {
            string q = "update [tbCustomers] set [UserName] = @UserName,[PassWord] = @PassWord,";
                q=q+"[CusName] = @CusName,[BirthDay] = @BirthDay,[Address] = @Address,[Phone] = @Phone,";
            q = q + "[Mobile] = @Mobile,[Email] = @Email,[CreatDate] = @CreatDate,[Status] = @Status";
            q=q+" where [Id] = @Id";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = q;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add(new SqlParameter("@UserName", tbCustomer.UserName));
            cmd.Parameters.Add(new SqlParameter("@PassWord", tbCustomer.PassWord));
            cmd.Parameters.Add(new SqlParameter("@CusName", tbCustomer.CusName));
            cmd.Parameters.Add(new SqlParameter("@BirthDay", tbCustomer.BirthDay));
            cmd.Parameters.Add(new SqlParameter("@Address", tbCustomer.Address));
            cmd.Parameters.Add(new SqlParameter("@Phone", tbCustomer.Phone));
            cmd.Parameters.Add(new SqlParameter("@Mobile", tbCustomer.Mobile));
            cmd.Parameters.Add(new SqlParameter("@Email", tbCustomer.Email));
            cmd.Parameters.Add(new SqlParameter("@CreatDate", tbCustomer.CreatDate));
            cmd.Parameters.Add(new SqlParameter("@Status", tbCustomer.Status));
            cmd.Parameters.Add(new SqlParameter("@Id", tbCustomer.Id));

            ExecuteNonQuery(cmd);

        }

        public static void Delete(tbCustomerInfo tbCustomer)
        {
            string q = "Delete from tbCustomers where Id=" + tbCustomer.Id;
            ExecuteNonQuery(q);
        }
    }
}
