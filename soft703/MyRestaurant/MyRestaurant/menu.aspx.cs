using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

namespace MyRestaurant
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string menuType = Request.QueryString["menuType"];
            DAL_Menu dal = new DAL_Menu();
            SqlDataReader reader = dal.getAllMenu(menuType);

            Response.Write("<Table border=3 bordercolor=blue align=center width=60%>");

            while(reader.Read())
            {
                Response.Write("<tr> <td> " + reader[0] + "</td> <td> <a href=menuDetails.aspx?menuID=" + reader[0]+ ">" + reader[1] + "</a> </td> </tr>");
            }

            Response.Write("</Table>");

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}