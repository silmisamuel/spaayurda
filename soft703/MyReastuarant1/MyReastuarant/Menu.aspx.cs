using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyReastuarant
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string menuType = Request.QueryString["menuType"];
            DAL_Menu dal = new DAL_Menu();
            SqlDataReader reader = new SqlDataReader
        }
    }
}