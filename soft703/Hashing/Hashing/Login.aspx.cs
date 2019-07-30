using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hashing
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            lblsha256.Text = Security.GetHash256(txtPassword.Text,txtPassword.Text);
           // lblsha512.Text = Security.GetHash512(txtPassword.Text);
            lblsha512.Text = Security.GetHash512(txtPassword.Text,txtPassword.Text);

            string password = Security.GetHash256(txtPassword.Text, txtUserId.Text);
            DAL_Users dAL_Users = new DAL_Users();
            bool check = dAL_Users.userHasRegistered(txtUserId.Text, password);
            if (check)
            {
                lblMessage.Text = "Login Succeefully";
            }
            else
            {
                lblMessage.Text = "Invalid user name and password";
            }
            lblMessage.Visible = true;

        }
    }
}