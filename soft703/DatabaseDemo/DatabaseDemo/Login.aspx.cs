using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseDemo
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            lblsha256.Text = DAL_Users.GetHash256(txtPassword.Text, txtPassword.Text);
            // lblsha512.Text = Security.GetHash512(txtPassword.Text);
            lblsha512.Text = DAL_Users.GetHash512(txtPassword.Text, txtPassword.Text);
            
        }
    }
}