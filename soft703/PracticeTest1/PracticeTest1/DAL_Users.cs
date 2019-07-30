using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace PracticeTest1
{
    public class DAL_Users
    {
       

        string connectionString = ConfigurationManager.ConnectionStrings["connectionDemo"].ConnectionString;
        SqlConnection connection;

        
             public void saveUser(string firstName, string userId, string userpassword)
        {
            // step2
            connection = new SqlConnection(connectionString);
            connection.Open();
            string query = "Insert into tblUsers values(' " +
                firstName + " ', '" + userId + "', '" + userpassword + "')";//step 3 make query
            SqlCommand command = new SqlCommand(query, connection);//step4

            command.ExecuteNonQuery(); //step5

            connection.Close();
        }

    }
}