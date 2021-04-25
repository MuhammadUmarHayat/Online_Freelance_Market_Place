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
    public partial class Client_ViewBids : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string userid = "";
                if (Session["userid"] != null)
                {
                    userid = Session["userid"].ToString();
                    Label1.Text = userid;
                    // bindCategory();//show all categories
                    show();
                    string query = "select distinct Title from Client_Projects where ClientID='"+ userid + "' ";
                    SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(query, con);
                    con.Open();
                    da.Fill(dt);
                    con.Close();

                    DropDownList1.DataTextField = "Title";

                    DropDownList1.DataValueField = "Title";

                    DropDownList1.DataSource = dt;

                    DropDownList1.DataBind();

                    con.Close();






                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pid = DropDownList1.Text;
            string query = "Select * from Freelancer_Bids where projectid= '" + pid + "'";

           // string query = "select * from Client_Projects where category='" + category + "'";
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
private void show()
        {

            string query = "Select * from users,FreeLancer_Skills, Freelancer_Bids where users.userID = '" + Label1.Text + "'";

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
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (IsPostBack)
            {



                if (e.CommandName == "viewProfile")
                {

                    DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                    TextBox txtBid = (TextBox)(e.Item.FindControl("TextBox1"));
                    string freelancerId = e.CommandArgument.ToString();
                    string clientIDId = Label1.Text;
                    Session["freelancerId"] = freelancerId;
                    Session["userid"] = clientIDId;
                    Response.Redirect("viewProfile.aspx");


                }//

                if (e.CommandName == "assignProject")
                {

                    DataRowView Record = (DataRowView)e.Item.DataItem;
                   

                   
                    string projectTitle = Record["ProjectId"].ToString(); 
                    string freelancerId = Record["FreelancerID"].ToString();
                    string clientID = Label1.Text;
                    string accountNumber = getAccountInfo(clientID, "client");
                    string amount = Record["Amount"].ToString();//project amount

                    string status = "Assign";

                    string startDate = "";
                    string endDate = "";
                    string Duration = "";

                    DataTable dt = getProjectInfo( projectTitle);
                    if (dt.Rows.Count>0)
                    {
                        string d = dt.Rows[0]["Duration"].ToString();
                       DateTime date1= DateTime.Now;
                        int duration = Convert.ToInt32(d);
                        DateTime ed = date1.AddDays(duration);
                       
                         startDate = date1.ToString();
                        endDate = ed.ToString();
                        Duration = duration.ToString();


                                                                                                                                    //AssignProjects(projectTitle,FID,ClientID,Start_Date,DueDate,Status,Duration)
                        string query = "insert into AssignProjects(projectTitle,FID,ClientID,Start_Date,DueDate,Status,Duration) values('" + projectTitle + "','" + freelancerId + "','" + clientID + "','" + startDate + "','" + endDate + "','" + status + "','" + Duration + "')";
                        SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
                        con.Open();
                        SqlCommand cmd = new SqlCommand(query, con);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        ///////////////////////////////
                        ///transfer amount to company account
                        ///


                        // string CompanyaccountNumber = getAccountInfo(clientID, "admin");
                         string ClientaccountNumber = getAccountInfo(clientID, "client");
                        status = "Assign";
                    
                        TransferMoney(clientID,  amount, status);
                        amount = "-" + amount;
                        DeductionMoney(ClientaccountNumber, clientID, amount, status);



                    }
                    else
                    {



                    }

                    
                    // Response.Redirect("Addtocart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());

                }//assignProject







            }
        }


        private DataTable getProjectInfo(string projectTitle)
        {
            string query = "Select * from Client_Projects where Title='"+ projectTitle + "'";

            // string query = "select * from Client_Projects where category='" + category + "'";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            con.Open();
            da.Fill(dt);
            return dt;


        }

       
        private void TransferMoney( string UserID,  string Amount, string status)
        {
                                          //  Accounts(AccountNumber, UserID, Password, usertype, Amount, date, status)
          string companyAcct=  getCompanyAcct();
            string query = "insert into Accounts(AccountNumber,UserID,usertype,Amount,date,status) values('"+ companyAcct + "','"+UserID+"','client','"+Amount+"','"+DateTime.Now+"','"+status+"') ";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();

        }

        private void DeductionMoney(string AccountNumber, string UserID, string Amount, string status)
        {
            //  Accounts(AccountNumber, UserID, Password, usertype, Amount, date, status)
            
            string query = "insert into Accounts(AccountNumber,UserID,usertype,Amount,date,status) values('" + AccountNumber + "','" + UserID + "','client','" + Amount + "','" + DateTime.Now + "','" + status + "') ";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();

        }

        private string getAccountInfo(string clientID,string userType)
        {
            string query = "Select * from Accounts where userID='" + clientID + "' and usertype='"+ userType + "'";

            // string query = "select * from Client_Projects where category='" + category + "'";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            con.Open();
            da.Fill(dt);
            string accountID = "";
            if (dt.Rows.Count>0) 
            {
                accountID = dt.Rows[0]["accountNumber"].ToString();
            }
            return accountID;


        }
        private string getCompanyAcct()
        {
            string query = "Select * from Accounts where usertype='admin'";

            // string query = "select * from Client_Projects where category='" + category + "'";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            con.Open();
            da.Fill(dt);
            string accountID = "";
            if (dt.Rows.Count > 0)
            {
                accountID = dt.Rows[0]["accountNumber"].ToString();
            }
            return accountID;


        }








        protected void DataList1_ItemDataBound1(object sender, DataListItemEventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}