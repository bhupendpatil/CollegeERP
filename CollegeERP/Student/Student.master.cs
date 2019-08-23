using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Student : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HiText.Text = "Hi, " + Session["SUser"].ToString();       
    }

    protected void StudentLogout_Click(object sender, EventArgs e) {
        Session.Clear();
        Response.Redirect("/Student.aspx");
    }
}
