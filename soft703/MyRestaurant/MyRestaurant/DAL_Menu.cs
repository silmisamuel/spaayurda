using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Configuration;
using System.Data.SqlClient;
namespace MyRestaurant
{
    public class DAL_Menu
    {
        SqlConnection connection;
        public DAL_Menu()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["connectionMyRestaurant"].ConnectionString;
            connection = new SqlConnection(connectionString);
        }
        public void saveMenuItem()
        {

        }
        public SqlDataReader getAllMenu(string menuType)
        {
            connection.Open();
            string query = "select menuID, menuName, menuDescription, menuImage, menuPrice, menuType from tblMenu where menuType='" + menuType + "'";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader reader = command.ExecuteReader();
            //connection.Close();
            return reader;
            
        }

        public SqlDataReader getMenu(int menuID)
        {
            connection.Open();
            string query = "select menuID, menuName, menuDescription, menuImage, menuPrice, menuType from tblMenu where menuID=" + menuID;
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader reader = command.ExecuteReader();
            //connection.Close();
            return reader;

        }


    }
}