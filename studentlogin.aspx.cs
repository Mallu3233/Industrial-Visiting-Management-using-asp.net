﻿


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class student_studentlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (uid.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter id');", true);
            uid.Focus();
        }
        else if (pass.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter password');", true);
            pass.Focus();
        }

        else
        {
            String u_id, u_pass, s;
            u_id = uid.Text;
            u_pass = pass.Text;

            s = "select * from student_signup";
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection2"].ConnectionString);
            cn.Open();
            SqlCommand cmd = new SqlCommand(s, cn);
            SqlDataReader rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                if (u_id == rs.GetString(4) && u_pass == rs.GetString(5))
                {
                
                 Session["uid"] = uid.Text;
                    Response.Redirect("student_section.aspx");
                }
                else
                {
                    Label1.Visible = true;
                }
            }
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        uid.Text = "";
        pass.Text = "";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("studentsignup.aspx");
    }
    protected void uid_TextChanged(object sender, EventArgs e)
    {

    }
    protected void pass_TextChanged(object sender, EventArgs e)
    {

    }
}

