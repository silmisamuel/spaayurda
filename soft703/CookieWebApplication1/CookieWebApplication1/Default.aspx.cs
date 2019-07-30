using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookieWebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


           
                HttpCookie aCookie = Request.Cookies["UserInfo"];
                if (aCookie != null)
                {
                    aCookie = Request.Cookies["UserInfo"];
                    btnLogout.Text = aCookie.Values["UserInfo"] + (" logout");

                }
                else
                {
                    Response.Redirect("WebLoginForm.aspx");
                }

            }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            HttpCookie aCookie = new HttpCookie("UserInfo");
            aCookie.Expires = DateTime.Now.AddDays(-30);                    //expiry date
                                                                            //  Response.Cookies.Add(aCookie);                  
            Response.Redirect("WebLoginForm.aspx");
        }
    }

    
}