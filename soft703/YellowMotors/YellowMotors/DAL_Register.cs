using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace YellowMotors
{
    public class DAL_Register
    {
        string configuration = ConfigurationManager.ConnectionStrings["connectionYellowMotors"].ConnectionString;
        SqlConnection connection;

        public void RegisterUsers(string userID,string name, string password, string country,string emailAddress)
        {
            connection = new SqlConnection(configuration);
            connection.Open();

            string query = "insert into tblUsers values ('" + userID + "' ,'" + name + "','" + password + "','" + country + "','" + emailAddress + "')";
            SqlCommand command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();
            connection.Close();

        }
          
    }
}