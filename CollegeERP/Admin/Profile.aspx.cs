using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AName.Text = Session["AName"].ToString();
        AEmail.Text = Session["AEmail"].ToString();
        AContact.Text = Session["AContact"].ToString();
    }
}