using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

namespace MyRestaurant
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int menuID = int.Parse(Request.QueryString["menuID"]);
            DAL_Menu dal = new DAL_Menu();
            SqlDataReader reader = dal.getMenu(menuID);
            reader.Read();
            Response.Write("<Table border=3 bordercolor=red align=center bgcolor=pink width=80%>");
            Response.Write("<tr> <td colspan=2><input type=text name=txtMenuName value=" + reader[1] + "></td> </tr>");
            Response.Write("<tr> <td> Price  </td> <td> NZ $" + reader[4] + "</td> </tr>");
            Response.Write("<tr> <td> Description </td> <td> " + reader["menuDescription"] + "</td> </tr>");
            Response.Write("<Table>");
                    }
    }
}