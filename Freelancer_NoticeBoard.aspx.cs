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
    public partial class Freelancer_NoticeBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                string userid = Session["userid"].ToString();
                getReviews(userid);
                getAssignProjects(userid);
            }
        }


        private void getReviews(string userid)
        {
            string query = "select * from Project_Review where fid='" + userid + "' ";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            con.Open();
            da.Fill(dt);
            con.Close();

            GridView1.DataSource = dt;
            GridView1.DataBind();

        }


        private void getAssignProjects(string userid)
        {
            string query = "select * from AssignProjects where fid='" + userid + "' ";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            con.Open();
            da.Fill(dt);
            con.Close();

            GridView2.DataSource = dt;
            GridView2.DataBind();

        }




    }
}