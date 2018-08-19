using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    string mystr, sql1;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection mycon1 = new SqlConnection();
        SqlCommand mycom1 = new SqlCommand();
        mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();

        mycon1.ConnectionString = mystr;
        mycon1.Open();
        sql1 ="select * from pick";
        mycom1.CommandText = sql1;
        mycom1.Connection = mycon1;
        SqlDataReader myreader = mycom1.ExecuteReader();
        while (myreader.Read())
        {

          

        }
        mycon1.Close();
        myreader.Close();

    }
   
}
