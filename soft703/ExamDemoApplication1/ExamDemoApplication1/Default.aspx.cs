using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamDemoApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //HttpCookie c = Request.Cookies["SilmiCookie"];

            
            if (Session["FirstName"] == null)
            {
                Response.Redirect("Register.aspx");
           }
            else
            {
                lblName.Text = ""+(Session["FirstName"]);
            }

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
           Session["FirstName"]=null;
        }
    }
}