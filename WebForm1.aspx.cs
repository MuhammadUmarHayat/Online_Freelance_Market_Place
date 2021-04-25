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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "select * from Client_Projects";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            con.Open();
            da.Fill(dt);
            con.Close();
            DataList1.DataSource = dt;
            DataList1.DataBind();
            bindCategory();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userid = TextBox1.Text;
            string password = TextBox2.Text;
            string userType = DropDownList1.Text;

            string query = "select * from users where userid='"+userid+"' and password='"+password+"' and status='ok'";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query,con);
            con.Open();
            da.Fill(dt);
            con.Close();
            if (userid.Equals("admin") && password.Equals("admin")&& userType.Equals("Admin")) 
            {
                Response.Redirect("AdminConsole.aspx");
            }
            if (dt.Rows.Count > 0)
            {
                if (userType.Equals("Client"))
                {
                    Session["userid"] = userid;
                    Response.Redirect("ClientConsole.aspx");
                }
                else if (userType.Equals("Freelancer"))
                {
                    Session["userid"] = userid;
                    Response.Redirect("FreelancerConsole.aspx");
                }

            }
            else 
            {


                Label1.Text = "Please enter correct user id or password";
            
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string category = DropDownList1.Text;
            string query = "select * from Client_Projects where category='" + category + "'";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            con.Open();
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count>0)
            {
                DataList1.DataSource = dt;
                DataList1.DataBind();


            }



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

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

        }

        protected void DataList1_ItemDataBound1(object sender, DataListItemEventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}