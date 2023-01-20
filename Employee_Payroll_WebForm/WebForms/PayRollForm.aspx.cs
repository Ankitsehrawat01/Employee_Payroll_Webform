using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee_Payroll_WebForm.WebForms
{
    public partial class PayRollForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                //Fill Years
                for(int i = 2010; i<=2023; i++)
                {
                    ddlYear.Items.Add(i.ToString());
                }
                ddlYear.Items.FindByValue(System.DateTime.Now.Year.ToString()).Selected=true; //To get current Year

                //Fill Months
                for (int i = 1; i <= 12; i++)
                {
                    ddlMonth.Items.Add(i.ToString());
                }
                ddlMonth.Items.FindByValue(System.DateTime.Now.Month.ToString()).Selected = true; //to get current Month

                //fill days
                FillDays();
            }
        }
        public void FillDays()
        {
            ddlDay.Items.Clear();
            //printing number of days in current month or year
            int numofdays = DateTime.DaysInMonth(Convert.ToInt32(ddlYear.SelectedValue), Convert.ToInt32(ddlMonth.SelectedValue));

            //fill days
            for(int i =1;i<=numofdays;i++)
            {
                ddlDay.Items.Add(i.ToString());
            }
            ddlDay.Items.FindByValue(System.DateTime.Now.Day.ToString()).Selected = true;
        }


        static string connectionstring = ConfigurationManager.ConnectionStrings["Payroll_Details_WebFormConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionstring);

        protected void Button3_Click(object sender, EventArgs e)
        {
            using(con)
            try
            {
                SqlCommand cmd = new SqlCommand("sp_AddpayrollDetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Profile_Image", RadioButtonList1.SelectedValue);
                cmd.Parameters.AddWithValue("@Gender",RadioButtonList3.SelectedValue);
                    string checklist = "";
                    for (int i = 0; i < CheckBoxList1.Items.Count; i++)
                    {
                        if (CheckBoxList1.Items[i].Selected)
                        {
                            if (checklist == "")
                            {
                                checklist = CheckBoxList1.Items[i].Value;

                            }
                            else
                            {
                                checklist += " " + CheckBoxList1.Items[i].Value;//can checked more then one box
                            }
                        }
                    }
                cmd.Parameters.AddWithValue("@Department", checklist);
                cmd.Parameters.AddWithValue("@Salary", DropDownList1.SelectedValue);

                cmd.Parameters.AddWithValue("@Start_Date", ddlDay.SelectedValue + "/" + ddlMonth.SelectedValue + "/" + ddlYear.SelectedValue );
                cmd.Parameters.AddWithValue("@Notes", TextBox2.Text);
                    con.Open();
                    var datareader = cmd.ExecuteReader();
                    if(datareader != null)
                    {
                        Session["data"]= datareader;
                        Label8.Text = "Details Successfully Inserted into the Database";
                        Response.Redirect("HomePage.aspx");
                    }
                    else
                    {
                        Label8.Text = "Details Not entered";
                    }
                    con.Close();
                }
                catch (Exception)
            {

                throw;
            }

        }

        protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillDays();
        }

        protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillDays();
        }
    }
}