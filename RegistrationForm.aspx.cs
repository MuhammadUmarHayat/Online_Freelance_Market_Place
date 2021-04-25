using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;


namespace Online_Freelance_Market_Place
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
            string link = "images/" + Path.GetFileName(FileUpload1.FileName);

            string status = "ok";
            string query = "insert into users(userID,Name,password,Address,Email,MobileNo,userType,status,photo) values('"+TextBox1.Text+"','"+ TextBox2.Text + "','"+ TextBox3.Text + "','"+ TextBox5.Text + "','"+ TextBox6.Text + "','"+ TextBox7.Text + "','" + RadioButtonList1.Text + "','" + status + "','" + link+ "')";
            SqlConnection con = new SqlConnection(DatabaseClass.connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(query,con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = " You are registered successfully ";


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistrationForm.aspx");
        }
    }
}