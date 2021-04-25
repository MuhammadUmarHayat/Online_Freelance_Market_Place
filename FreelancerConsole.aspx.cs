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
    public partial class FreelancerConsole : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string userid = "";
                if (Session["userid"] != null)
                {
                    userid = Session["userid"].ToString();
                    Label10.Text = userid;
                    bindCategory();//show all categories

                    // string query = "select * from users where userid='" + userid + "'";
                    string query = "select * from Client_Projects";
                    SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(query, con);
                    con.Open();
                    da.Fill(dt);
                    con.Close();
                    DataList1.DataSource = dt;
                    DataList1.DataBind();
                }
            }

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (IsPostBack)
            {



                if (e.CommandName == "bidNow")
                {

                    DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                    TextBox txtBid = (TextBox)(e.Item.FindControl("TextBox1"));
                    string projectTitle = e.CommandArgument.ToString();
                    string freelancerId = Label10.Text;
                    string amount = txtBid.Text;
                    string status = "pending";

                    // Freelancer_Bids(projectID, amount, status, Date, FreelancerID)

                    string query = "insert into Freelancer_Bids(projectID, amount, status, Date, FreelancerID) values('" + projectTitle + "','" + amount + "','" + status + "','" + DateTime.Now + "','" + freelancerId + "')";
                    SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
                    con.Open();
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    // Response.Redirect("Addtocart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());

                } 
            }


        }

        protected void DataList1_ItemDataBound1(object sender, DataListItemEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string category = DropDownList1.Text;
            string query = "select * from Client_Projects where category='"+ category + "'";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            con.Open();
            da.Fill(dt);
            con.Close();
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        private void bindCategory()
        {

            
            string query = "select distinct category from Client_Projects ";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            con.Open();
            da.Fill(dt);
            con.Close();
            
            DropDownList1.DataTextField = "category";

            DropDownList1.DataValueField = "category";

            DropDownList1.DataSource = dt;

            DropDownList1.DataBind();

            con.Close();
        }

    }
}