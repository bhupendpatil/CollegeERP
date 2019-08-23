using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FName.Text = Session["FName"].ToString();
        FEmail.Text = Session["FEmail"].ToString();
        FContact.Text = Session["FContact"].ToString();
        FDepartment.Text = Session["FDepartment"].ToString();
    }
}