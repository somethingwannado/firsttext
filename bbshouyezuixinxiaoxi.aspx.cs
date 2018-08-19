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
    string mystr, sql1,sql2,sql3;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection mycon1 = new SqlConnection();
        SqlCommand mycom1 = new SqlCommand();
        mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();

        mycon1.ConnectionString = mystr;
        mycon1.Open();
      //  sql1 = "select * from news ";



      
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

    /*    for (i = 0; i < GridView1.Rows.Count; i++) {
            hh = GridView1.Rows[i].FindControl("HyperLink3") as HyperLink;

            String text = GridView1.Rows[i].Cells[0].Text;
           // Label3.Text = text;
            Session["t"] = text.ToString();
            Server.Transfer("shouyezuixinxiaoxi2.aspx");*/
        
        }

      protected void Button1_Click(object sender, EventArgs e)
                        {
          //Label4.Text = TextBox2.Text + TextBox4.Text;
        SqlConnection mycon1 = new SqlConnection();
        SqlCommand mycom1 = new SqlCommand();
        mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();

        mycon1.ConnectionString = mystr;
        mycon1.Open();
       // int i = int.Parse(TextBox2.Text);
      //  ;
       // string a = TextBox2.ToString();
       // int v = Convert.ToInt32(a);
       
      
          sql2 = "INSERT INTO news(id, title, photo, datetim) VALUES ( '" + TextBox2.Text + "', '" + TextBox4.Text + "', '" + TextBox3.Text + "', '" + TextBox5.Text + "') ";
          sql3 = "insert into wen(id,title,arcitle)values( '" + TextBox2.Text + "', '" + TextBox4.Text + "','')";
         // + TextBox2.Text + TextBox4.Text ;
        mycom1.CommandText = sql2;
        mycom1.Connection = mycon1;
        mycom1.ExecuteNonQuery();

        mycom1.CommandText = sql3;
        mycom1.Connection = mycon1;
        mycom1.ExecuteNonQuery();
         mycon1.Close();
} 
    }
   
