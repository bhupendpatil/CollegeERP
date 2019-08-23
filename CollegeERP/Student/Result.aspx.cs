using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["SClass"].ToString() == "FYCS")
        {
            resultDB.SelectCommand = "SELECT [Class], [Exam], [Image] FROM [Result] where class='FYCS'";
        }

        if (Session["SClass"].ToString() == "SYCS")
        {
            resultDB.SelectCommand = "SELECT [Class], [Exam], [Image] FROM [Result] where class='SYCS'";
        }

        if (Session["SClass"].ToString() == "TYCS")
        {
            resultDB.SelectCommand = "SELECT [Class], [Exam], [Image] FROM [Result] where class='TYCS'";
        }

        if (Session["SClass"].ToString() == "FYIT")
        {
            resultDB.SelectCommand = "SELECT [Class], [Exam], [Image] FROM [Result] where class='FYIT'";
        }

        if (Session["SClass"].ToString() == "SYIT")
        {
            resultDB.SelectCommand = "SELECT [Class], [Exam], [Image] FROM [Result] where class='SYIT'";
        }

        if (Session["SClass"].ToString() == "TYIT")
        {
            resultDB.SelectCommand = "SELECT [Class], [Exam], [Image] FROM [Result] where class='TYIT'";
        }
    }
}