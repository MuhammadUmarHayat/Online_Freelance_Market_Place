using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Online_Freelance_Market_Place
{
    public partial class Client_PostProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string userid = "";
            if (Session["userid"] != null)
            {
                userid = Session["userid"].ToString();
                Label3.Text = userid;

            }




        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            string date = Calendar2.SelectedDate.ToString();
            Label2.Text = date;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            string date = Calendar1.SelectedDate.ToString();
            Label1.Text = date;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //save
                                                                                                                                                    // Client_Projects(ClientID, Category, Duration, Budget, Start_Date, Tools, Description, Status, Due_Date)

            string status = "open";
            string query = "insert into Client_Projects(ClientID, Category, Duration, Budget, Start_Date, Tools,title, Description, Status, Due_Date) values('" + Label3.Text + "','" + DropDownList1.Text + "','" + txtDuration.Text + "','" + txtBudget.Text + "','" + Label1.Text + "','" + txtTools.Text + "','" + txtTitle.Text+ "','" + txtDescription.Text + "','" + status + "','" + Label2.Text + "')";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label4.Text = " You are registered successfully ";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //cancel
            Response.Redirect("RegistrationForm.aspx");

        }
    }
}