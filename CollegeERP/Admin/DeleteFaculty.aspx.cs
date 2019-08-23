using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_DeleteFaculty : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=BHUPENDS-PC;Initial Catalog=CollegeERP;Integrated Security=True");
    SqlCommand query;
    ConnectionState state = new ConnectionState();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void FacultyDelete_Click(object sender, EventArgs e)
    {
        String username = FUser.Text.Trim();

        if (state == ConnectionState.Open)
        {
            conn.Close();
        }
        else
        {
            conn.Open();
            query = new SqlCommand("Delete from Faculty where username='" + username + "'", conn);
            query.ExecuteNonQuery();
            conn.Close();

            FUser.Text = "";
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Deleted " + username + "')", true);
        }
    }

    protected void FacultyClear_Click(object sender, EventArgs e)
    {
        FUser.Text = "";
    }
}