using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SName.Text = Session["SName"].ToString();
        SEmail.Text = Session["SEmail"].ToString();
        SContact.Text = Session["SContact"].ToString();
        SDepartment.Text = Session["SDepartment"].ToString();
        SClass.Text = Session["SClass"].ToString();
        SYear.Text = Session["SYear"].ToString();
    }
}