using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Faculty_AddAssignment : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=BHUPENDS-PC;Initial Catalog=CollegeERP;Integrated Security=True");
    SqlCommand query;
    ConnectionState state = new ConnectionState();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AssignmentAdd_Click(object sender, EventArgs e)
    {
        String Assignment = AAssignment.Text.Trim();
        String className = AClassName.Text.Trim();
        String date = ADate.Text.Trim();

        if (state == ConnectionState.Open)
        {
            conn.Close();
        }
        else
        {
            conn.Open();
            query = new SqlCommand("insert into Assignment (Assignment, Class, LastDate) values ('" + Assignment + "','" + className + "','" + date + "')", conn);
            query.ExecuteNonQuery();
            conn.Close();

            AAssignment.Text = "";
            AClassName.Text = "";
            ADate.Text = "";
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Added Assignment')", true);
        }
    }

    protected void AssignmentClear_Click(object sender, EventArgs e)
    {
        AAssignment.Text = "";
        AClassName.Text = "";
        ADate.Text = "";
    }
}