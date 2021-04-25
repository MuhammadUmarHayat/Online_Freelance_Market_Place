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
    public partial class FreelancerProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string userid = "";
            if (Session["userid"] != null)
            {
                userid = Session["userid"].ToString();
                Label1.Text = userid;

            }

            string query = "select * from users where userid='" + userid + "'";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            con.Open();
            da.Fill(dt);
            con.Close();

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            else
            {


            }


        }
    }
}