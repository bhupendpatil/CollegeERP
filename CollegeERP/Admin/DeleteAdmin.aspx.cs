using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_DeleteAdmin : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=BHUPENDS-PC;Initial Catalog=CollegeERP;Integrated Security=True");
    SqlCommand query;
    ConnectionState state = new ConnectionState();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AdminDelete_Click(object sender, EventArgs e)
    {
        String username = AUsername.Text.Trim();

        if (username.Equals(Session["AUser"].ToString()))
        {
            Response.Redirect("/Admin/Profile.aspx");
        }
        else
        {

            if (state == ConnectionState.Open)
            {
                conn.Close();
            }
            else
            {
                conn.Open();
                query = new SqlCommand("Delete from Admin where username='" + username + "'", conn);
                query.ExecuteNonQuery();
                conn.Close();

                AUsername.Text = "";
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Deleted " + username +"')", true);
            }
        }
    }

    protected void AdminClear_Click(object sender, EventArgs e)
    {
        AUsername.Text = "";
    }
}