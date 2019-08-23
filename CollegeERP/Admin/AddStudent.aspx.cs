using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AddStudent : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=BHUPENDS-PC;Initial Catalog=CollegeERP;Integrated Security=True");
    SqlCommand query;
    ConnectionState state = new ConnectionState();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ClearStudent_Click(object sender, EventArgs e)
    {
        SUser.Text = "";
        SFName.Text = "";
        SLName.Text = "";
        SEmail.Text = "";
        SContact.Text = "";
        SDepartment.Text = "";
        SClass.Text = "";
        SYear.Text = "";
        Spass.Text = "";
        SCPass.Text = "";
    }

    protected void AddStudent_Click(object sender, EventArgs e)
    {
        String username = SUser.Text.Trim();
        String Pass = Spass.Text.Trim();
        String firstName = SFName.Text.Trim();
        String lastName = SLName.Text.Trim();
        String email = SEmail.Text.Trim();
        String contact = SContact.Text.Trim();
        String department = SDepartment.Text.Trim();
        String classs = SClass.Text.Trim();
        String year = SYear.Text.Trim();

        if (state == ConnectionState.Open)
        {
            conn.Close();
        }
        else
        {
            conn.Open();
            query = new SqlCommand("insert into Student (username, password, firstName, lastName, email, contact, class, year, department) values ('" + username + "','" + Pass + "','" + firstName + "','" + lastName + "','" + email + "','" + contact + "','" + classs + "','" + year + "','" + department + "')", conn);
            query.ExecuteNonQuery();
            conn.Close();

            SUser.Text = "";
            SFName.Text = "";
            SLName.Text = "";
            SEmail.Text = "";
            SContact.Text = "";
            SDepartment.Text = "";
            SClass.Text = "";
            SYear.Text = "";
            Spass.Text = "";
            SCPass.Text = "";
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Added Student')", true);
        }
    }
}