using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    DbConnection dbConnection = new DbConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand sqlCommand = new SqlCommand("Select * from tbl_kategoriler ",dbConnection.connection());
        SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
        DataList1.DataSource = sqlDataReader;
        DataList1.DataBind();
    }
}
