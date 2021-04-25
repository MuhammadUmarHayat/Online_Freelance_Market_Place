using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Online_Freelance_Market_Place
{
    public partial class ReviewProjects : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter adapter;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            string userid = "";
            FillGrid(userid);
            if (Session["userid"] != null)
            {
                userid = Session["userid"].ToString();
                Label1.Text = userid;
                FillGrid(userid);
                bindProjectTitle(userid);
            }
        }


        public void FillGrid(string userid)
        {
            try
            {
                con = new SqlConnection(DatabaseClass.connectionString);
                cmd = new SqlCommand();
                con.Open();//"Select * from UploadProjects where clientId='"+ userid + "'"
                cmd = new SqlCommand("Select * from UploadProjects", con);
                adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                gridviewFiles.DataSource = dt;
                gridviewFiles.DataBind();

                cmd.Dispose();
                con.Dispose();
                con.Close();

            }
            catch (Exception ex)
            {

            }
        }

        protected void FileDownload_Clicked(object sender, EventArgs e)
        {
            try
            {
                var element = (LinkButton)sender;

                String filename = element.Text.ToString();
                String filepath = Server.MapPath("Files/" + filename);

                Response.Clear();
                Response.ClearHeaders();
                Response.ClearContent();
                Response.AddHeader("Content-Disposition", "attachment; filename=" + filename);
                Response.Flush();

                Response.TransmitFile(filepath);
                Response.End();
            }
            catch (Exception ex)
            {

            }
        }



        private void bindProjectTitle(string userID)
        {


            string query = "select distinct projectTitle from UploadProjects where ClientID='"+ userID + "'";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            con.Open();
            da.Fill(dt);
            con.Close();

            DropDownList1.DataTextField = "projectTitle";

            DropDownList1.DataValueField = "projectTitle";

            DropDownList1.DataSource = dt;

            DropDownList1.DataBind();

            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Project_Review(ClientID,FID,ProjectID,Remakrs,Stars,Rank,Status)
            string ClientID = Label1.Text;
            
            string ProjectID = DropDownList1.Text;
            string FID = getFID(ProjectID);
            string Remakrs = TextBox1.Text;
            string Stars = DropDownList3.Text;
            string Rank = DropDownList4.Text;
            string Status = DropDownList2.Text;



            ///AccountNumber,UserID,Password,usertype,Amount,date,status
            string query = "insert into Project_Review(ClientID,FID,ProjectID,Remakrs,Stars,Rank,Status) values ('" + ClientID + "','" + FID + "','" + ProjectID + "','" + Remakrs + "','" + Stars + "','" + Rank + "','" + Status + "')";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label2.Text = " Saved successfully ";



        }

        private string getFID(string pid)
        {
            string fid = "";
            string query = "select * from UploadProjects where projectTitle='" + pid + "'";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            con.Open();
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count>0)
            {

                fid = dt.Rows[0]["fid"].ToString();
            }
            return fid;
        }


    }
}