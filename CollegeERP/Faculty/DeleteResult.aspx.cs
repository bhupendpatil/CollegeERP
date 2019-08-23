using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Faculty_DeleteResult : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=BHUPENDS-PC;Initial Catalog=CollegeERP;Integrated Security=True");
    SqlCommand query;
    ConnectionState state = new ConnectionState();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ResultDelete_Click(object sender, EventArgs e)
    {

        String cName = ClassName.Text.Trim();
        String fName = ImageName.Text.Trim();
        String path = Server.MapPath(fName);

        if (state == ConnectionState.Open)
        {
            conn.Close();
        }
        else
        {
            conn.Open();
            query = new SqlCommand("Delete from Result where Class='" + cName + "' AND Image = '" + fName +"'", conn);
            query.ExecuteNonQuery();
            conn.Close();

            ClassName.Text = "";
            ImageName.Text = "";
            File.Delete(path);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Deleted " + cName + "')", true);
        }
    }

    protected void ResultClear_Click(object sender, EventArgs e)
    {
        ClassName.Text = "";
        ImageName.Text = "";
    }
}