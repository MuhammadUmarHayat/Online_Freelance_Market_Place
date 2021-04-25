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
    public partial class viewProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userid = "";
            if (Session["userid"] != null && Session["freelancerId"] != null)
            {
                userid = Session["userid"].ToString();
                Label1.Text = userid;
                string fid = Session["freelancerId"].ToString();
                showInfo(fid);
                showSkills(fid);
            }

        }

        private void showInfo(string fid)
        {

            string query = "Select * from users where userid='"+fid+"' and usertype='freelancer'";

            // string query = "select * from Client_Projects where category='" + category + "'";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            con.Open();
            da.Fill(dt);
            con.Close();
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }


        private void showSkills(string fid)
        {

            string query = "Select * from Freelancer_Skills where userid='" + fid + "'";

            // string query = "select * from Client_Projects where category='" + category + "'";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            con.Open();
            da.Fill(dt);
            con.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }


    }
}