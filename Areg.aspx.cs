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
    public partial class Areg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        ValidationSettings: UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Unnamed8_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=F:\\Projectkuizzie\\Projectkz\\Projectkz\\App_Data\\kzdb.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into AdminTb values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();

            Label1.Text = "ADMIN REGISTERED";
            Response.Redirect("alogin.aspx");
        }
    }
}