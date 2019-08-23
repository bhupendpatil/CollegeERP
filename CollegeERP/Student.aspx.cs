using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Pages_Student : System.Web.UI.Page
{

    SqlConnection conn = new SqlConnection("Data Source=BHUPENDS-PC;Initial Catalog=CollegeERP;Integrated Security=True");
    SqlCommand query;
    SqlDataReader reader;
    ConnectionState state = new ConnectionState();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void StudentsClear_Click(object sender, EventArgs e)
    {
        studentUser.Text = "";
        studentPass.Text = "";
    }

    protected void StudentLogin_Click(object sender, EventArgs e)
    {
        String username = studentUser.Text.Trim();
        String password = studentPass.Text.Trim();

        String User = "";
        String Pass = "";
        String FName = "";
        String LName = "";
        String Email = "";
        String Contact = "";
        String Classs = "";
        String Year = "";
        String Department = "";
       

        if (state == ConnectionState.Open)
        {
            conn.Close();
        }
        else
        {
            conn.Open();
            query = new SqlCommand("Select username, password, firstName, lastName, email, contact, class, year, department from Student where username='"+ username +"'",conn);
            reader = query.ExecuteReader();
            while (reader.Read())
            {
                User = reader[0].ToString();
                Pass = reader[1].ToString();
                FName = reader[2].ToString();
                LName = reader[3].ToString();
                Email = reader[4].ToString();
                Contact = reader[5].ToString();
                Classs = reader[6].ToString();
                Year = reader[7].ToString();
                Department = reader[8].ToString();
            }
            conn.Close();

            if (username.Equals(User) && password.Equals(Pass))
            {
                Session["SUser"] = User;
                Session["SName"] = FName + " " + LName;
                Session["SEmail"] = Email;
                Session["SContact"] = Contact;
                Session["SDepartment"] = Department;
                Session["SClass"] = Classs;
                Session["SYear"] = Year;
                Response.Redirect("Student/Profile.aspx");
            }
            else
            {
                studentUser.Text = "";
                studentPass.Text = "";
            }
        }      
    }
}