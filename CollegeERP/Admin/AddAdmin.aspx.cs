using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AddAdmin : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=BHUPENDS-PC;Initial Catalog=CollegeERP;Integrated Security=True");
    SqlCommand query;
    ConnectionState state = new ConnectionState();

    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void AddAdmin_Click(object sender, EventArgs e)
    {
        String username = AUser.Text.Trim();
        String Pass = pass.Text.Trim();
        String firstName = FName.Text.Trim();
        String lastName = LName.Text.Trim();
        String email = Email.Text.Trim();
        String contact = Contact.Text.Trim();

        if (state == ConnectionState.Open)
        {
            conn.Close();
        }
        else {
            conn.Open();
            query = new SqlCommand("insert into Admin (username, password, firstName, lastName, email, contact) values ('" + username + "','" + Pass + "','" + firstName + "','" + lastName + "','" + email + "','" + contact + "')", conn);
            query.ExecuteNonQuery();
            conn.Close();

            AUser.Text = "";
            FName.Text = "";
            LName.Text = "";
            Email.Text = "";
            Contact.Text = "";
            pass.Text = "";
            cpass.Text = "";
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Added Admin')", true);
        }
    }

    protected void ClearAdmin_Click(object sender, EventArgs e)
    {
        AUser.Text = "";
        FName.Text = "";
        LName.Text = "";
        Email.Text = "";
        Contact.Text = "";
        pass.Text = "";
        cpass.Text = "";
    }
}