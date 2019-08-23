using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_Faculty : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HiText.Text = "Hi, " + Session["FUser"].ToString();
    }

    protected void FacultyLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("/Staff.aspx");
    }
}
