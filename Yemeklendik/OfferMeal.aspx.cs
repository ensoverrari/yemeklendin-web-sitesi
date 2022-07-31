using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class OfferMeal : System.Web.UI.Page
{
    DbConnection dbConnection = new DbConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand sqlCommand = new SqlCommand("insert into tbl_tarifler (tarif_ad, tarif_malzeme, tarif_hazirlanis, tarif_resim, tarif_sahip, tarif_sahipmail) values (@t1,@t2,@t3,@t4,@t5,@t6)", dbConnection.connection());
        sqlCommand.Parameters.AddWithValue("@t1", tbtarifadi.Text);
        sqlCommand.Parameters.AddWithValue("@t2", tbmalzemeler.Text);
        sqlCommand.Parameters.AddWithValue("@t3", tbyapilis.Text);
        sqlCommand.Parameters.AddWithValue("@t4", furesim.FileName);
        sqlCommand.Parameters.AddWithValue("@t5", tböneren.Text);
        sqlCommand.Parameters.AddWithValue("@t6", tbmail.Text);
        sqlCommand.ExecuteNonQuery();
        dbConnection.connection().Close();
        Response.Write("Tarif öneriniz alınmıştır.");
    }
}