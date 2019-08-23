using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Faculty_AddResult : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=BHUPENDS-PC;Initial Catalog=CollegeERP;Integrated Security=True");
    SqlCommand query;
    SqlDataReader reader;
    ConnectionState state = new ConnectionState();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ResultAdd_Click(object sender, EventArgs e)
    {
        String className = ResultClass.Text.Trim();
        String examName = ResultExam.Text.Trim();
        Random randNum = new Random();
        int rann = randNum.Next(10000);
        String randomNumber = rann.ToString();
        ResultImage.SaveAs(Server.MapPath("/dbimg/") + randomNumber + Path.GetFileName(ResultImage.FileName));
        String imgName = "/dbimg/" + randomNumber + Path.GetFileName(ResultImage.FileName);


        if (state == ConnectionState.Open)
        {
            conn.Close();
        }
        else
        {
            conn.Open();
            query = new SqlCommand("insert into Result (Class, Exam, Image) values('" + className + "','" + examName + "','" + imgName + "')", conn);
            query.ExecuteNonQuery();
            conn.Close();

            ResultClass.Text = "";
            ResultExam.Text = "";
            ResultImage.Attributes.Clear();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Added Result')", true);
        }
    }

    protected void ResultClear_Click(object sender, EventArgs e)
    {
        ResultClass.Text = "";
        ResultExam.Text = "";
        ResultImage.Attributes.Clear();
    }
}