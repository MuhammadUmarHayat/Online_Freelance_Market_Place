using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Online_Freelance_Market_Place
{
    public partial class ClientConsole : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userid = "";
            if (Session["userid"] !=null)
            {
                userid = Session["userid"].ToString();
                Label1.Text=userid;

            }
            
        }
    }
}