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
    public partial class FreelancerAddSkills : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userid = "";
            if (Session["userid"] != null)
            {
                userid = Session["userid"].ToString();
                Label10.Text = userid;

            }

            string query = "select * from FreeLancer_Skills where userid='" + userid + "'";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            con.Open();
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count>0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            else
            {


            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "insert into FreeLancer_Skills values('" + Label10.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DateTime.Now +  "')";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = " Your skills are saved successfully ";
        }



    }
}