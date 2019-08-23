using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AddFaculty : System.Web.UI.Page
{

    SqlConnection conn = new SqlConnection("Data Source=BHUPENDS-PC;Initial Catalog=CollegeERP;Integrated Security=True");
    SqlCommand query;
    ConnectionState state = new ConnectionState();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AddStudent_Click(object sender, EventArgs e)
    {
        String username = FFUser.Text.Trim();
        String Pass = Fpass.Text.Trim();
        String firstName = FFName.Text.Trim();
        String lastName = FLName.Text.Trim();
        String email = FEmail.Text.Trim();
        String contact = FContact.Text.Trim();
        String department = FDepartment.Text.Trim();

        if (state == ConnectionState.Open)
        {
            conn.Close();
        }
        else
        {
            conn.Open();
            query = new SqlCommand("insert into Faculty (username, password, firstName, lastName, email, contact, department) values ('" + username + "','" + Pass + "','" + firstName + "','" + lastName + "','" + email + "','" + contact + "','" + department + "')", conn);
            query.ExecuteNonQuery();
            conn.Close();

            FFUser.Text = "";
            FFName.Text = "";
            FLName.Text = "";
            FEmail.Text = "";
            FContact.Text = "";
            FDepartment.Text = "";
            Fpass.Text = "";
            Fcpass.Text = "";
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Added Faculty')", true);
        }
    }

    protected void ClearStudent_Click(object sender, EventArgs e)
    {
        FFUser.Text = "";
        FFName.Text = "";
        FLName.Text = "";
        FEmail.Text = "";
        FContact.Text = "";
        FDepartment.Text = "";
        Fpass.Text = "";
        Fcpass.Text = "";
    }
}