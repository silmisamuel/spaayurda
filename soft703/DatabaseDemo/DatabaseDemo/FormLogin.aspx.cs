using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseDemo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegisterUser_Click(object sender, EventArgs e)
        {
            DAL_Users aLayer = new DAL_Users();
            aLayer.saveUser(txtFirstName.Text, txtUserId.Text, txtPassword.Text);
                lblMessage.Text = "User saved";
                lblMessage.Visible = true;
            txtFirstName.Text = "";
            txtUserId.Text = "";
            txtPassword.Text = "";
        }

        protected void txtFirstName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}