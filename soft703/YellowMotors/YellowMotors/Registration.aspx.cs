using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YellowMotors
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            DAL_Login aLayer = new DAL_Login();
            aLayer.LoginUsers(txtuserID.Text, txtPassword.Text);
            txtUserID.Text = "";
            txtPassword.Text = "";
            HttpCookie aCookie = new HttpCookie('LoginUsers');
            aCookie.Values['UserID'] = txtUserID.Text;
            aCookie.Values['Password'] = txtPassword.Text;
            aCookie.Expires = DateTime.Now.AddDays(3d);
            Response.Redirect("Home.aspx")


            aCookie.Expires = DateTime.Now.AddDays(3d);

        }
    }
}