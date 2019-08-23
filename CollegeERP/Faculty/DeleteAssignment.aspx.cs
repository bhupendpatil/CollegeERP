using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Faculty_DeleteAssignment : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=BHUPENDS-PC;Initial Catalog=CollegeERP;Integrated Security=True");
    SqlCommand query;
    ConnectionState state = new ConnectionState();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AssignmentDelete_Click(object sender, EventArgs e)
    {
        String name = AssignmentName.Text.Trim();

        if (state == ConnectionState.Open)
        {
            conn.Close();
        }
        else
        {
            conn.Open();
            query = new SqlCommand("Delete from Assignment where Assignment='" + name + "'", conn);
            query.ExecuteNonQuery();
            conn.Close();

            AssignmentName.Text = "";
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Deleted " + name + "')", true);
        }
    }

    protected void AssignmentClear_Click(object sender, EventArgs e)
    {
        AssignmentName.Text = "";
    }
}