using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MealDetail : System.Web.UI.Page
{
    DbConnection dbConnection = new DbConnection();
    string yemekId = " ";
    protected void Page_Load(object sender, EventArgs e)
    {
        yemekId = Request.QueryString["yemek_id"];//sayfa yüklendiği sırada tıklanan sayfadaki yemeğin yemek id sini
                                                  //buradaki yemekId adlı değişkene atadık.
        
        SqlCommand sqlCommand = new SqlCommand("Select yemek_ad from tbl_yemekler where yemek_id=@p1", dbConnection.connection());
        sqlCommand.Parameters.AddWithValue("@p1", yemekId); //değişkenimizi sql sorgusundaki yemek id ile ilişkilendirip
        SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();//datareader ile okuduk 
        while (sqlDataReader.Read())
        {
            Label3.Text = sqlDataReader[0].ToString();//okunan datareaderi ilgili labele yazdırdık.
        }
        dbConnection.connection().Close();

        //Yorumların Listelenmesi
        SqlCommand sqlCommand1 = new SqlCommand("select * from tbl_yorumlar where yemek_id=@p2", dbConnection.connection());
        sqlCommand1.Parameters.AddWithValue("@p2", yemekId);
        SqlDataReader sqlDataReader1 = sqlCommand1.ExecuteReader();
        DataList2.DataSource = sqlDataReader1;
        DataList2.DataBind();
            
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand sqlCommand = new SqlCommand("insert into tbl_yorumlar (yorum_adsoyad, yorum_mail, yorum_metin, yemek_id) values (@p1,@p2,@p3,@p4)", dbConnection.connection());
        sqlCommand.Parameters.AddWithValue("@p1", TextBox1.Text);
        sqlCommand.Parameters.AddWithValue("@p2", TextBox2.Text);
        sqlCommand.Parameters.AddWithValue("@p3", TextBox3.Text);
        sqlCommand.Parameters.AddWithValue("@p4", yemekId);
        sqlCommand.ExecuteNonQuery();
        dbConnection.connection().Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
}