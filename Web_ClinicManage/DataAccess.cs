using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Web_ClinicManage
{
    public class DataAccess
    {
           public static string strConStr = ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString;
        public static SqlConnection connection = new SqlConnection(strConStr);

        public static SqlConnection GetConnection()
        {

            if (connection.State == ConnectionState.Closed)
            {
                connection.Open();
                return connection;
            }
            else
                return connection;
        }
        #region DB Access Functions
        private static SqlCommand GetCommand(string sql)
        {
            SqlCommand cmd = new SqlCommand(sql, GetConnection());
            connection.Close();
            return cmd;
        }

        public static DataTable GetData(string sql)
        {
            return GetData(GetCommand(sql));
        }

        public static DataTable GetData(SqlCommand cmd)
        {
            try
            {
                if (cmd.Connection == null) { cmd.Connection = GetConnection(); }
                using (DataSet ds = new DataSet())
                {
                    using (SqlDataAdapter da = new SqlDataAdapter())
                    {
                        da.SelectCommand = cmd;
                        da.Fill(ds);
                        GetConnection().Close();
                        return ds.Tables[0];
                    }
                }
            }
            finally
            {
                connection.Close();
            }
        }

        public static void ExecuteNonQuery(string sql)
        {
            ExecuteNonQuery(GetCommand(sql));
        }

        public static void ExecuteNonQuery(SqlCommand cmd)
        {

            cmd.Connection = GetConnection();
            cmd.ExecuteNonQuery();

        }

        public static object ExecuteScalar(string sql)
        {
            return ExecuteScalar(GetCommand(sql));
        }

        public static object ExecuteScalar(SqlCommand cmd)
        {
            try
            {
                if (cmd.Connection == null) { cmd.Connection = GetConnection(); }
                return cmd.ExecuteScalar();
            }
            finally
            {
                connection.Close();
            }
        }


        public static string MaxId(string Table, string ColId)
        {
            string strReturn = "";
            strReturn = ExecuteScalar("SELECT max(" + ColId + ") as maxid FROM " + Table).ToString();
            connection.Close();
            return strReturn;
        }
        public static int DBSize()
        {
            using (SqlCommand cmd = new SqlCommand("select sum(size) * 8 * 1024 from sysfiles"))
            {
                cmd.CommandType = CommandType.Text;
                return (int)ExecuteScalar(cmd);
            }
        }
        #endregion
    }
}