using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace YellowMotors
{
    public class DAL_Login
    {
        public void LoginUsers(string userID, string password);
        {
          
         string query = "insert into tblUsers values('" + txtUserID.Text.ToString() + "','" + txtPassword1.Text.ToString() + "'";
    }
}
}