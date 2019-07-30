using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookieWebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //Step 1- Validate Data
            //step2 - Verify data from database
            //Save data in Cookies

            HttpCookie aCookie = new HttpCookie("UserInfo");//create
            aCookie.Values["userInfo"] = txtUser.Text;
          
            aCookie.Expires.AddDays(30);//expirt date
            Response.Cookies.Add(aCookie); // write the cookie
            Response.Redirect("Default.aspx");
        }

        protected void txtLogin_TextChanged(object sender, EventArgs e)
        {

        }
    }
}