using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Projectkz
{
    public partial class alogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        ValidationSettings: UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=F:\\Projectkuizzie\\Projectkz\\Projectkz\\App_Data\\kzdb.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from AdminTb where Aname='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            String s = "";
            while (dr.Read())
            {
                s = dr[0].ToString();
            }
            if (s == "")
            {
                Label1.Text = "Invaild user";
            }
            else
            {

                Session["Name"] = TextBox1.Text;
                Response.Redirect("Homeaft.aspx");
            }
        }
    }
}