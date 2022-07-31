using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class CategoryDetail : System.Web.UI.Page
{
    DbConnection dbConnection = new DbConnection();
    string kategoriId = " ";

    protected void Page_Load(object sender, EventArgs e)
    {
        kategoriId = Request.QueryString["kategori_id"];
        SqlCommand sqlCommand = new SqlCommand("Select * from tbl_yemekler where kategori_id=@p1", dbConnection.connection());
        sqlCommand.Parameters.AddWithValue("@p1", kategoriId);
        SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
        DataList2.DataSource = sqlDataReader;
        DataList2.DataBind();


    }
}