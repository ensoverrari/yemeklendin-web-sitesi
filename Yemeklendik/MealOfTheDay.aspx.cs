using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class CookOfTheDay : System.Web.UI.Page
{
    DbConnection dbConnection = new DbConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand sqlCommand = new SqlCommand("Select * from tbl_gununyemegi ", dbConnection.connection());
        SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
        DataList2.DataSource = sqlDataReader;
        DataList2.DataBind();
    }
}