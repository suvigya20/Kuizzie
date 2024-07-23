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
    public partial class Registerkz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        ValidationSettings: UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Unnamed9_Click(object sender, EventArgs e)
        {
            string gender = string.Empty;
            if (RadioButton1.Checked)
            {
                gender = "Male";
            }
            if (RadioButton2.Checked)
            {
                gender = "Female";
            }
            if (RadioButton3.Checked)
            {
                gender = "Others";
            }
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Projectkz\\Projectkz\\App_Data\\kzdb.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into RegisterTb values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + gender + "' , '" + TextBox7.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            
            Label1.Text = "USER REGISTERED";
            Response.Redirect("Login.aspx");
        }
    }
}