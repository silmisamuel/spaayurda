using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Security.Cryptography;

using System.Data.SqlClient;//step1
using System.Configuration;//step1
namespace DatabaseDemo
{
    public class DAL_Users
    {

        //String connectionstring = "Data Source =09185304-SILMI; Initial Catalog=dbSOFT703; Integrated Security=true";
        string connectionString = ConfigurationManager.ConnectionStrings["connectionSoft803"].ConnectionString;
        SqlConnection connection;

        public void saveUser(string firstName, string userId, string userpassword)
        {
            // step2
            connection = new SqlConnection(connectionString);
            connection.Open();
            string query = "Insert into tblUsers values(' " +
                firstName + " ', '" + userId +"', '"+ userpassword  +"')";//step 3 make query
            SqlCommand command = new SqlCommand(query, connection);//step4

            command.ExecuteNonQuery(); //step5

            connection.Close();
        }
        // public static string GetHash512(string password)
        public static string GetHash512(string password, string salt)
        {
            // byte[] passwordByte = ASCIIEncoding.ASCII.GetBytes(password);
            byte[] passwordByte = ASCIIEncoding.ASCII.GetBytes(password + salt + "SM");

            //HashAlgorithm algorithm = new HMACSHA512();
            HashAlgorithm algorithm = HMACSHA512.Create();
            Byte[] hashPassword = algorithm.ComputeHash(passwordByte);
            return Convert.ToBase64String(hashPassword);

        }
        public static string GetHash256(string password, string salt)
        {
            byte[] passwordByte = ASCIIEncoding.ASCII.GetBytes(password + salt + "SM");

            // HashAlgorithm algorithm = new HMACSHA256();
            HashAlgorithm algorithm = HMACSHA256.Create();
            Byte[] hashPassword = algorithm.ComputeHash(passwordByte);
            return Convert.ToBase64String(hashPassword);
        }
}