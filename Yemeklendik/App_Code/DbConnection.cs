using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DbConnection
/// </summary>
public class DbConnection
{
    public SqlConnection connection()
    {
        SqlConnection sqlConnection = new SqlConnection(@"Data Source=DESKTOP-5627S7J;Initial Catalog=YemeklenDBO;Integrated Security=True");
        sqlConnection.Open();
        return sqlConnection;
    }
}