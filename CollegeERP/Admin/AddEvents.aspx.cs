using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AddEvents : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=BHUPENDS-PC;Initial Catalog=CollegeERP;Integrated Security=True");
    SqlCommand query;
    ConnectionState state = new ConnectionState();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void EventClear_Click(object sender, EventArgs e)
    {
        EName.Text = "";
        EIncharge.Text = "";
        EDate.Text = "";
    }

    protected void EventAdd_Click(object sender, EventArgs e)
    {
        String name = EName.Text.Trim();
        String Incharge = EIncharge.Text.Trim();
        String Date = EDate.Text.Trim();

        if (state == ConnectionState.Open)
        {
            conn.Close();
        }
        else
        {
            conn.Open();
            query = new SqlCommand("insert into Event (Name, Incharge, Date) values ('" + name + "','" + Incharge + "','" + Date + "')", conn);
            query.ExecuteNonQuery();
            conn.Close();

            EName.Text = "";
            EIncharge.Text = "";
            EDate.Text = "";
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Added Event')", true);
        }
    }
}