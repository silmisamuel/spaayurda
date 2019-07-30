using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YellowMotors
{

    //It is better to give a meaningful classname ,then it will be helpful for further reference
   // Commented by : Silmi samuel
   // Commented on : 24 April 2019
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie aCookie = Request.Cookies["UserName"];
            if (Request.Cookies["UserName"] != null)
            {
                if (Request.Cookies["Welcome"] != null) {
                    HomeName.Text = "Welcome Back " + aCookie.Values["UserName"];
                }
                else
                {
                    HttpCookie bCookie = new HttpCookie("Welcome");
                    bCookie.Values["Welcome"] = "welcome";
                    bCookie.Expires.AddDays(3);
                    Response.Cookies.Add(bCookie);
                    HomeName.Text = "Welcome " + aCookie.Values["UserName"];
                }
                HomeName.Visible = true;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}