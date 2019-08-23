using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Staff : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=BHUPENDS-PC;Initial Catalog=CollegeERP;Integrated Security=True");
    SqlCommand query;
    SqlDataReader reader;
    ConnectionState state = new ConnectionState();

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void StaffClear_Click(object sender, EventArgs e)
    {
        RadioFaculty.Checked = false;
        RadioAdmin.Checked = false;
        staffUser.Text = "";
        staffPass.Text = "";
    }

    protected void StaffLogin_Click(object sender, EventArgs e)
    {
        String username = staffUser.Text.Trim();
        String password = staffPass.Text.Trim();

        String User = "";
        String Pass = "";
        String FName = "";
        String LName = "";
        String Email = "";
        String Contact = "";
        String Department = "";

        if (state == ConnectionState.Open)
        {
            conn.Close();
        }
        else {
            conn.Open();
            if (RadioFaculty.Checked == true) {
                query = new SqlCommand("Select username, password, firstName, lastName, email, contact, department from Faculty where username='" + username + "'", conn);
                reader = query.ExecuteReader();
                while (reader.Read()) {
                    User = reader[0].ToString();
                    Pass = reader[1].ToString();
                    FName = reader[2].ToString();
                    LName = reader[3].ToString();
                    Email = reader[4].ToString();
                    Contact = reader[5].ToString();
                    Department = reader[6].ToString();
                }
                conn.Close();

                if (username.Equals(User) && password.Equals(Pass))
                {
                    Session["FUser"] = User;
                    Session["FName"] = FName + " " + LName;
                    Session["FEmail"] = Email;
                    Session["FContact"] = Contact;
                    Session["FDepartment"] = Department;
                    Response.Redirect("Faculty/Profile.aspx");
                }
                else
                {
                    RadioFaculty.Checked = false;
                    RadioAdmin.Checked = false;
                    staffUser.Text = "";
                    staffPass.Text = "";
                }
            }


            if (RadioAdmin.Checked == true) {
                query = new SqlCommand("Select username, password, firstName, lastName, email, contact from Admin where username='" + username + "'", conn);
                reader = query.ExecuteReader();
                while (reader.Read())
                {
                    User = reader[0].ToString();
                    Pass = reader[1].ToString();
                    FName = reader[2].ToString();
                    LName = reader[3].ToString();
                    Email = reader[4].ToString();
                    Contact = reader[5].ToString();
                }
                conn.Close();

                if (username.Equals(User) && password.Equals(Pass))
                {
                    Session["AUser"] = User;
                    Session["AName"] = FName + " " + LName;
                    Session["AEmail"] = Email;
                    Session["AContact"] = Contact;
                    Response.Redirect("Admin/Profile.aspx");
                }
                else
                {
                    RadioFaculty.Checked = false;
                    RadioAdmin.Checked = false;
                    staffUser.Text = "";
                    staffPass.Text = "";
                }
            }
        }


    }
}