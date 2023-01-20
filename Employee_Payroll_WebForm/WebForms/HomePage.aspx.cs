using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee_Payroll_WebForm.WebForms
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        static string connectionstring = ConfigurationManager.ConnectionStrings["Payroll_Details_WebFormConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionstring);


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PayRollForm.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            int Emp_Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            con.Open();
            SqlCommand command = new SqlCommand("delete from Employee_Details  where Emp_Id='" + Emp_Id + "'", con);
            int a = command.ExecuteNonQuery();
            if (a > 0)
            { 
                GridView1.EditIndex = -1;
                GridView1.DataBind();
                Response.Write("<script>alert('Details deleted')</script>");
            }
        }
    }
}