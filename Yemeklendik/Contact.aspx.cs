using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Contact : System.Web.UI.Page
{
    DbConnection dbConnection = new DbConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand sqlCommand = new SqlCommand("insert into tbl_mesajlar (mesaj_gonderen, mesaj_baslik, mesaj_mail, mesaj_icerik) values (@p1,@p2,@p3,@p4)", dbConnection.connection());
        sqlCommand.Parameters.AddWithValue("@p1", TextBox1.Text);
        sqlCommand.Parameters.AddWithValue("@p2", TextBox2.Text);
        sqlCommand.Parameters.AddWithValue("@p3", TextBox3.Text);
        sqlCommand.Parameters.AddWithValue("@p4", TextBox4.Text);
        sqlCommand.ExecuteNonQuery();
        dbConnection.connection().Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        Response.Write("Mesajınız iletilmek üzere alınmıştır.");

    }
}