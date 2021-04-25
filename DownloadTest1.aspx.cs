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
    public partial class DownloadTest1 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter adapter;
        SqlCommand cmd;
     ///   static String connectionString = @"Data Source=192.168.100.45;Initial Catalog=ParallelCodes;User ID=sa;Password=789;Integrated Security=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
            FillGrid();
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            try
            {
                String filePath = Server.MapPath("~/Files/" + fileupload1.FileName);

                fileupload1.SaveAs(filePath);
                lblInfo.Text = "Your file was successfully uploaded to : Files/"
                + Path.GetFileName(fileupload1.FileName).ToString();

                con = new SqlConnection(DatabaseClass.connectionString);
                cmd = new SqlCommand();
                con.Open();
                cmd.Connection = con;
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "sp_AddFiles";
                //projectTitle,ClientID,FID,FileName,filePath,date,status
                string projectTitle = "t";
                string ClientID = "c";
                string FID = "fid";
                string status = "st";
                cmd.Parameters.AddWithValue("@projectTitle", projectTitle);
                cmd.Parameters.AddWithValue("@ClientID", ClientID);
                cmd.Parameters.AddWithValue("@FID", FID);
                cmd.Parameters.AddWithValue("@FileName", fileupload1.FileName);
                cmd.Parameters.AddWithValue("@date", DateTime.Now);
                cmd.Parameters.AddWithValue("@filePath", fileupload1.FileName);
           
                cmd.Parameters.AddWithValue("@status", status);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                con.Dispose();
                con.Close();

                lblInfo.Text = "Saved successfully.";

                txtFileName.Text = "";

                FillGrid();
            }
            catch (Exception ex)
            {
                lblInfo.Text = ex.Message.ToString();
            }
        }

        public void FillGrid()
        {
            try
            {
                con = new SqlConnection(DatabaseClass.connectionString);
                cmd = new SqlCommand();
                con.Open();
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
    }
}