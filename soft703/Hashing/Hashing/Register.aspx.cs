using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hashing
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
  
        protected void Button1_Click(object sender, EventArgs e)
        {
            string Password = Security.GetHash512(txtPassword.Text, txtUserID.Text);
            //string Password = Security.GetHash512(txtUserID.Text,txtUserID.Text)
            DAL_Users dAL_Users = new DAL_Users();
           // dAL_Users.saveUser(txtUserID.Text, Password);

            bool check = dAL_Users.userExistOrNot(txtUserID.Text);
            if (check)
            {
                lblMessage.Text = "User already exists";
            }
            else
            {
                dAL_Users.saveUser(txtUserID.Text, Password);
                lblMessage.Text = "Registered successfully";
            }
            lblMessage.Visible = true;
        }
    }
}