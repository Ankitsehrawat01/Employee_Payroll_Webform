using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee_Payroll_WebForm.WebForms
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        static string connectionstring = ConfigurationManager.ConnectionStrings["Payroll_Details_WebFormConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionstring);

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (con)
                try
                {
                    SqlCommand cmd = new SqlCommand("sp_AddregistrationDetails", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@First_Name", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Last_Name", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@E_Mail", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@Phone", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@Password", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@Confirm_Password", TextBox6.Text);
                    con.Open();
                    int returncode = (int)cmd.ExecuteScalar();
                    if (returncode == -1)
                    {
                        Label2.Text = "Email id already exists,please use another email";
                    }
                    else
                    {
                        Response.Redirect("LoginPage.aspx");
                    }
                    con.Close();
                }
                catch (Exception)
                {

                    throw;
                }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}