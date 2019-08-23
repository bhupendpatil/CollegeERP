using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_DeleteStudent : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=BHUPENDS-PC;Initial Catalog=CollegeERP;Integrated Security=True");
    SqlCommand query;
    ConnectionState state = new ConnectionState();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void StudentDelete_Click(object sender, EventArgs e)
    {
        String username = SUsername.Text.Trim();

        if (state == ConnectionState.Open)
        {
            conn.Close();
        }
        else
        {
            conn.Open();
            query = new SqlCommand("Delete from Student where username='" + username + "'", conn);
            query.ExecuteNonQuery();
            conn.Close();

            SUsername.Text = "";
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Deleted " + username + "')", true);
        }
    }

    protected void StudentClear_Click(object sender, EventArgs e)
    {
        SUsername.Text = "";
    }
}