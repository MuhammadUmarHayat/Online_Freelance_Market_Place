using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Freelance_Market_Place
{
    public partial class FreelancerAccountInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                Label1.Text = Session["userid"].ToString();


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string status = "ok";                                                                                   ///AccountNumber,UserID,Password,usertype,Amount,date,status
            string query = "insert into Accounts(AccountNumber,UserID,Password,usertype,Amount,date,status) values ('" + TextBox1.Text + "','" + Label1.Text + "','" + TextBox2.Text + "','Client','" + TextBox4.Text + "','" + DateTime.Now + "','" + status + "')";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label2.Text = " You are registered successfully ";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("FreelancerAccountInformation.aspx");

        }
    }
}