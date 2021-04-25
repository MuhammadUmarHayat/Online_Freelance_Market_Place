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
    public partial class Freelancer_UploadAssignments : System.Web.UI.Page
    {

        SqlConnection con;
        SqlDataAdapter adapter;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            string userid = "";
            if (Session["userid"] != null)
            {
                userid = Session["userid"].ToString();
                Label1.Text = userid;
                bindProjectTitles(userid);

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                String filePath = Server.MapPath("~/Files/" + FileUpload1.FileName);

                FileUpload1.SaveAs(filePath);
                lblInfo.Text = "Your file was successfully uploaded to : Files/"
                + Path.GetFileName(FileUpload1.FileName).ToString();

                con = new SqlConnection(DatabaseClass.connectionString);
                cmd = new SqlCommand();
                con.Open();
                cmd.Connection = con;
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "sp_AddFiles";
                //projectTitle,ClientID,FID,FileName,filePath,date,status
                String FileName =TextBox1.Text;
                string projectTitle = DropDownList1.Text;
                string ClientID = getClientID(projectTitle);
                string FID = Label1.Text;
                string status = "submitted";

                cmd.Parameters.AddWithValue("@projectTitle", projectTitle);
                cmd.Parameters.AddWithValue("@ClientID", ClientID);
                cmd.Parameters.AddWithValue("@FID", FID);
                cmd.Parameters.AddWithValue("@FileName", FileName);
                cmd.Parameters.AddWithValue("@date", DateTime.Now);
                cmd.Parameters.AddWithValue("@filePath", FileUpload1.FileName);

                cmd.Parameters.AddWithValue("@status", status);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                con.Dispose();
                con.Close();

                lblInfo.Text = "Saved successfully.";

               

            }
            catch (Exception ex)
            {
                lblInfo.Text = ex.Message.ToString();
            }
        }


        private void bindProjectTitles(string fid)
        {


            string query = "select distinct projectTitle from AssignProjects where fid='"+fid+"' ";
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

        private string getClientID(string projectTitle)
        {
            string query = "select * from AssignProjects where projectTitle='" + projectTitle + "' ";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            con.Open();
            da.Fill(dt);
            con.Close();
            string clientID = "";
            if (dt.Rows.Count>0)
            {
                clientID = dt.Rows[0]["ClientID"].ToString();


            }
            return clientID;

        }


    }
}