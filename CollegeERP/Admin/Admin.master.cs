﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HiText.Text = "Hi, " + Session["AUser"].ToString();
    }

    protected void AdminLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("/Staff.aspx");
    }
}
