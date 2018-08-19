using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


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
        sql1 = "select * from news ";

      
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int i;
        HyperLink hh;
        Label a;

        // 
         // 
      // hh = GridView1.SelectedRow.FindControl("HyperLink3") as HyperLink;

     //   Session["title"]= "2";
       // Server.Transfer("shouyezuixinxiaoxi2.aspx");

        for (i = 0; i < GridView1.Rows.Count; i++) {
            hh = GridView1.Rows[i].FindControl("HyperLink3") as HyperLink;

            String text = GridView1.Rows[i].Cells[0].Text;
           // Label3.Text = text;
            Session["t"] = text.ToString();
            Server.Transfer("shouyezuixinxiaoxi2.aspx");
        
        }


    }
}
