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
    string mystr, sql1,sql2;
    protected void Page_Load(object sender, EventArgs e)

    {
        if (Session["tuan"] != null)
        {
            Label8.Text = Session["tuan"].ToString();

        }
      
    //  String a  = (Master.FindControl("Label3") as Label).ToString(); 

       // Response.Write("< script language='javascript'> window.navigate("") < /script>");

    /*    if (IsPostBack) { 
        
        Response.Redirect("myhistory.aspx");
        }
*/
       // 

      //  Session["n"] = (Master.FindControl("Label3") as Label).Text;
        //Label5.Text = lll.ToString();

      //  DetailsView1.Visible = false;
      
  
           // if (lll.ToString()!="未登录") { 
        //获取前台页面的条件值 
     //   sql1 = "select * from dingdan where pay=-1 and 用户名='"+lll.ToString()+"'";//更新条件
       //连接mycon1.Close();
       



            }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection mycon1 = new SqlConnection();
        SqlCommand mycom1 = new SqlCommand();
        mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
        mycon1.ConnectionString = mystr;
        mycon1.Open();

        TextBox t = DetailsView1.Rows[3].FindControl("TextBox1") as TextBox;
        string a = DateTime.Now.Month.ToString() + "." + DateTime.Now.Day.ToString();

        sql1 = "update talkpick set word='"+t.Text+"' where id='" + DetailsView1.Rows[0].Cells[1].Text + "'";
        mycom1.CommandText = sql1;
       mycom1.Connection = mycon1;
        mycom1.ExecuteNonQuery();

        Label7.Text = sql1 ;

        sql2 = "update talkpick set datetim='" + a.ToString() + "'  where id='" + DetailsView1.Rows[0].Cells[1].Text + "'";
        mycom1.CommandText = sql2;
        mycom1.Connection = mycon1;
        mycom1.ExecuteNonQuery();
        Response.Write("<script>alert('提交成功~')</script>");

    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
       // DetailsView1.Visible = true;

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label5.Text =(Master.FindControl("Label3") as Label).Text;

        if (IsPostBack)
        {

           // Label6.Text = GridView1.SelectedRow.Cells[3].Text;
        }
        // lll.ToString();
       
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Label6.Text = GridView1.SelectedValue.ToString();
    }
   
}
