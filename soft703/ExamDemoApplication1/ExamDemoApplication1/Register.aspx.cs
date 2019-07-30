using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamDemoApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            User user = new User()
            {
                Email = txtEmail.Text,
                Password = txtPassword.Text,
                FirstName = txtFirstName.Text,
                LastName = txtLastName.Text
            };
            DAL dal = new DAL();
            dal.Register(user);
            HttpCookie c = new HttpCookie("SilmiCookie");
            c.Expires = DateTime.Now.AddDays(1);
            c.Values.Add("Name", user.FirstName + " " + user.LastName);
            Response.Cookies.Add(c);
            Response.Redirect("Default.aspx");
            //Session["FirstName"] = user.FirstName;
            //Response.Redirect("Default.aspx");
        }

        protected void txtConfirmPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {

        }
    }
}