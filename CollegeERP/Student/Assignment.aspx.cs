using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Assignment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["SClass"].ToString()== "FYCS") {
            AssignmentData.SelectCommand = "SELECT * FROM [Assignment] where class='FYCS'";
        }

        if (Session["SClass"].ToString() == "SYCS") {
            AssignmentData.SelectCommand = "SELECT * FROM [Assignment] where class='SYCS'";
        }

        if (Session["SClass"].ToString() == "TYCS")
        {
            AssignmentData.SelectCommand = "SELECT * FROM [Assignment] where class='TYCS'";
        }

        if (Session["SClass"].ToString() == "FYIT")
        {
            AssignmentData.SelectCommand = "SELECT * FROM [Assignment] where class='FYIT'";
        }

        if (Session["SClass"].ToString() == "SYIT")
        {
            AssignmentData.SelectCommand = "SELECT * FROM [Assignment] where class='SYIT'";
        }

        if (Session["SClass"].ToString() == "TYIT")
        {
            AssignmentData.SelectCommand = "SELECT * FROM [Assignment] where class='TYIT'";
        }
    }
}