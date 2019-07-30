using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace Hashing
{
    public class DAL_Users
    {
        string connectionString = ConfigurationManager.ConnectionStrings["connectionSoft803"].ConnectionString;
        SqlConnection connection;

        public void saveUser(string userId, string userpassword)
        {
            
            connection = new SqlConnection(connectionString);
            connection.Open();
            string query = "Insert into tblUsers(userId,userPassword) values( '" + userId + "', '" + userpassword + "')";//step 3 make query
            SqlCommand command = new SqlCommand(query, connection);

            command.ExecuteNonQuery(); //step5

            connection.Close();
        }

        public bool userExistOrNot(string userId)
        {
            bool returnSign = false;
            connection = new SqlConnection(connectionString);
            connection.Open();
            string query = "Select * from tblUsers Where userId='" + userId + "'";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader dr = command.ExecuteReader();
            returnSign = dr.Read();

            connection.Close();
            return returnSign;
        }
        public bool userHasRegistered(string userId, string userpassword)
        {
            bool returnSign = false;
            connection = new SqlConnection(connectionString);
            connection.Open();
            string query = "Select * from tblUsers Where userId='" + userId + "'and userPassword='" + userpassword + "'";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader dr = command.ExecuteReader();
            returnSign = dr.Read();

            connection.Close();
            return returnSign;
        }

    }
}