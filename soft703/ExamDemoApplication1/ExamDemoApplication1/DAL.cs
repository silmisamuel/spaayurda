using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ExamDemoApplication1
{
    public class DAL
    {
        string connectionString = ConfigurationManager.ConnectionStrings["Silmi"].ConnectionString;
        public void Register(User user)
        {
            string query = "Insert into Users (firstname,lastname,email,password) Values(@FirstName,@LastName,@Email,@Password)";
            using (var con=new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, con);
                command.Parameters.AddWithValue("@FirstName", user.FirstName);
                command.Parameters.AddWithValue("@LastName", user.LastName);
                command.Parameters.AddWithValue("@Email", user.Email);
                command.Parameters.AddWithValue("@Password", user.Password);
                try
                {
                    con.Open();
                    command.ExecuteNonQuery();
                    con.Close();
                }
                catch(Exception ex)
                {

                }

            }
        }

    }
}