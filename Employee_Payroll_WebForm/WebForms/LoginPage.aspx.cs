using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee_Payroll_WebForm.WebForms
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        static string connectionstring = ConfigurationManager.ConnectionStrings["Payroll_Details_WebFormConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionstring);
        protected bool AuthenticateUser(string email, string password)
        {
            SqlCommand cmd = new SqlCommand("sp_login", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter parameteremail = new SqlParameter("@E_Mail", email);
            SqlParameter parameterpass = new SqlParameter("@Password", password);
            cmd.Parameters.Add(parameteremail);
            cmd.Parameters.Add(parameterpass);
            con.Open();
            int returncode = (int)cmd.ExecuteScalar();
            return returncode == -1;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (AuthenticateUser(TextBox1.Text, TextBox2.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked);
            }
            else
            {
                Response.Redirect("HomePage.aspx");
                Label1.Text = "Login Successful";
            }

        }
    }
}