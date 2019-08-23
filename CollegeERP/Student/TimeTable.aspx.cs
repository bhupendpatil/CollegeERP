using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_TimeTable : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["SClass"].ToString().Equals("FYIT")) {
            className.Text = "FYIT";

            m1.Text = "Stats";
            t1.Text = "Green Comp";
            w1.Text = "Stats";
            th1.Text = "OOPs";
            f1.Text = "MPC";
            s1.Text = "OOPs";

            m2.Text = "OOPs";
            t2.Text = "OOPs(P)";
            w2.Text = "OOPs";
            th2.Text = "MPC(P)";
            f2.Text = "Web";
            s2.Text = "Stats";

            m3.Text = "MPC";
            t3.Text = "OOPs(P)";
            w3.Text = "Green Comp";
            th3.Text = "MPC(P)";
            f3.Text = "Green Comp";
            s3.Text = "MPC";

            m4.Text = "Web(P)";
            t4.Text = "Web";
            w4.Text = "Stats";
            th4.Text = "Green Comp";
            f4.Text = "OOPs";
            s4.Text = "Web";

            m5.Text = "Web(P)";
            t5.Text = "MPC";
            w5.Text = "Web";
            th5.Text = "Stats";
            f5.Text = "";
            s5.Text = "Green Comp";
        }

        if (Session["SClass"].ToString().Equals("SYIT"))
        {
            className.Text = "SYIT";

            m1.Text = "SE";
            t1.Text = "Core JAVA";
            w1.Text = "CG";
            th1.Text = "SE";
            f1.Text = "SE";
            s1.Text = "SE";

            m2.Text = "Stats";
            t2.Text = "Stats";
            w2.Text = "Core JAVA";
            th2.Text = "CG";
            f2.Text = "ES";
            s2.Text = "Core JAVA";

            m3.Text = "Core JAVA";
            t3.Text = "ES";
            w3.Text = "Stats";
            th3.Text = "";
            f3.Text = "Core JAVA";
            s3.Text = "Stats";

            m4.Text = "ES";
            t4.Text = "CG";
            w4.Text = "SE";
            th4.Text = "Core JAVA(P)";
            f4.Text = "CG(P)";
            s4.Text = "Stats";

            m5.Text = "CG";
            t5.Text = "SE";
            w5.Text = "ES";
            th5.Text = "Core JAVA(P)";
            f5.Text = "CG(P)";
            s5.Text = "ES";
        }

        if (Session["SClass"].ToString().Equals("TYIT"))
        {
            className.Text = "TYIT";

            m1.Text = "";
            t1.Text = "";
            w1.Text = "";
            th1.Text = "";
            f1.Text = "";
            s1.Text = "";

            m2.Text = "DW";
            t2.Text = "DW";
            w2.Text = "PM";
            th2.Text = "DW";
            f2.Text = "PM";
            s2.Text = "DW";

            m3.Text = "IT";
            t3.Text = "CL";
            w3.Text = "DW";
            th3.Text = "IT";
            f3.Text = "IT";
            s3.Text = "PM";

            m4.Text = "PM";
            t4.Text = "IT";
            w4.Text = "IT";
            th4.Text = "PM";
            f4.Text = "IT";
            s4.Text = "IT";

            m5.Text = "CL";
            t5.Text = "PM";
            w5.Text = "CL";
            th5.Text = "IT";
            f5.Text = "CL";
            s5.Text = "DW";
        }

        if (Session["SClass"].ToString().Equals("FYCS"))
        {
            className.Text = "FYCS";

            m1.Text = "Calculus";
            t1.Text = "C";
            w1.Text = "Python-II";
            th1.Text = "Stats";
            f1.Text = "DS(P)";
            s1.Text = "DS";

            m2.Text = "Linux";
            t2.Text = "GT";
            w2.Text = "Linux(P)";
            th2.Text = "Python-II(P)";
            f2.Text = "C";
            s2.Text = "Stats";

            m3.Text = "DS";
            t3.Text = "Stats";
            w3.Text = "Linux(P)";
            th3.Text = "Python-II(P)";
            f3.Text = "C";
            s3.Text = "Stats";

            m4.Text = "Stats";
            t4.Text = "Linux";
            w4.Text = "GT";
            th4.Text = "C";
            f4.Text = "Stats";
            s4.Text = "C(P)";

            m5.Text = "Python-II";
            t5.Text = "DS";
            w5.Text = "Calculus";
            th5.Text = "Calculus";
            f5.Text = "DS";
            s5.Text = "C(P)";
        }

        if (Session["SClass"].ToString().Equals("SYCS"))
        {
            className.Text = "SYCS";

            m1.Text = "Andr";
            t1.Text = "SE";
            w1.Text = "Algorithm";
            th1.Text = "Lin. Alg";
            f1.Text = ".NET";
            s1.Text = ".NET(P)";

            m2.Text = ".NET";
            t2.Text = "Andr";
            w2.Text = "SE";
            th2.Text = "A JAVA";
            f2.Text = "A JAVA(P)";
            s2.Text = "Algorithm";

            m3.Text = "A JAVA";
            t3.Text = ".NET";
            w3.Text = "CN";
            th3.Text = "Andr";
            f3.Text = "A JAVA(P)";
            s3.Text = "Algorithm";

            m4.Text = "Algorithm";
            t4.Text = "CN";
            w4.Text = "Andr(P)";
            th4.Text = "CN";
            f4.Text = "Algorithm";
            s4.Text = "Lin. Alg";

            m5.Text = "CN";
            t5.Text = "A JAVA";
            w5.Text = "A JAVA(P)";
            th5.Text = "SE";
            f5.Text = "Lin. Alg";
            s5.Text = "Lin. Alg";
        }

        if (Session["SClass"].ToString().Equals("TYCS"))
        {
            className.Text = "TYCS";

            m1.Text = "PL/SQL";
            t1.Text = "AC-II(P)";
            w1.Text = "DCN";
            th1.Text = "";
            f1.Text = "JAVA";
            s1.Text = "DCN";

            m2.Text = "DCN";
            t2.Text = "AC-II(P)";
            w2.Text = "PL/SQL(P)";
            th2.Text = "JAVA";
            f2.Text = "AC-II";
            s2.Text = "JAVA";

            m3.Text = "AC-II";
            t3.Text = "PL/SQL";
            w3.Text = "JAVA";
            th3.Text = "DCN";
            f3.Text = "PL/SQL";
            s3.Text = "SE";

            m4.Text = "SE";
            t4.Text = "JAVA(P)";
            w4.Text = "SE";
            th4.Text = "AC-II";
            f4.Text = "DCN";
            s4.Text = "PL/SQL";

            m5.Text = "";
            t5.Text = "JAVA(P)";
            w5.Text = "PL/SQL(P)";
            th5.Text = "JAVA";
            f5.Text = "SE";
            s5.Text = "SE";
        }
    }
}