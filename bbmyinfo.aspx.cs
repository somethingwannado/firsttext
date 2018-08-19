using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    string mystr, sql1,sql2;

    SqlConnection mycon1 = new SqlConnection();
    SqlCommand mycom1 = new SqlCommand();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        (Master.FindControl("Label1") as Label).Text="订单处理"; 
        mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();

        mycon1.ConnectionString = mystr;
        mycon1.Open();
       
        
      
            
            
           


    mycon1.Close(); }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection mycon1 = new SqlConnection();
        SqlCommand mycom1 = new SqlCommand();
        mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
        mycon1.ConnectionString = mystr;
        mycon1.Open();

        sql2 = "DELETE FROM deldingdan WHERE id='" + DetailsView1.Rows[0].Cells[1].Text + "'";
        mycom1.CommandText = sql2;
        mycom1.Connection = mycon1;
        mycom1.ExecuteNonQuery();
        Session["del"] = "订单取消成功";
        Response.Write("<script>alert('删除成功')</script>");

        mycon1.Close();
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
         TextBox1.Text = Calendar1.SelectedDate.Month.ToString() + "." + Calendar1.SelectedDate.Day.ToString();

         SqlConnection mycon1 = new SqlConnection();
         SqlCommand mycom1 = new SqlCommand();
         mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
         mycon1.ConnectionString = mystr;
         mycon1.Open();

      /*   sql1 = "select count(*) from 团购项目 where pickname='" + DetailsView1.Rows[1].Cells[1].Text + "'and datatim='" + TextBox1.Text + "' ";
         mycom1.CommandText = sql1;
         mycom1.Connection = mycon1;
         int i = int.Parse((mycom1.ExecuteScalar().ToString()));
        int n = 50 - i;

         if (DropDownList1.SelectedItem.Text == "组团")
         {

             Label4.Text = "当前该项目已参团人数：" + i + "人，还需" + (50 - i) + "人";

         }*/


    }
    protected void Button4_Click(object sender, EventArgs e)

    {
         SqlConnection mycon1 = new SqlConnection();
         SqlCommand mycom1 = new SqlCommand();
         mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
         mycon1.ConnectionString = mystr;
         mycon1.Open();

         sql1 = "DELETE  FROM dingdan WHERE dingdanname='" + TextBox2.Text + "' and datetim='" + TextBox1.Text + "'";

         mycom1.CommandText = sql1;
         mycom1.Connection = mycon1;
         mycom1.ExecuteNonQuery();

         Session["tuan"] = "开团失败";
         Response.Write("<script>alert('取消成功')</script>");



    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        SqlConnection mycon1 = new SqlConnection();
        SqlCommand mycom1 = new SqlCommand();
        mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
        mycon1.ConnectionString = mystr;
        mycon1.Open();
        sql1 = "SELECT SUM(peo) From 团购项目 as a, dingdan as d where a.用户名=d.用户名 and  a.datatim=d.datetim and d.datetim='" + TextBox1.Text + "' and a.pickname=d.dingdanname and a.pickname='" + TextBox2.Text + "'";
       // sql1 = "SELECT SUM(peo) From dingdan where datetim='" + TextBox1.Text + "' and dingdanname='" + TextBox2.Text + "'";
        mycom1.CommandText = sql1;
        mycom1.Connection = mycon1;
        mycom1.ExecuteNonQuery();
        int i = int.Parse((mycom1.ExecuteScalar().ToString()));
        Label5.Text = i.ToString();

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Session["tuan"] = "开团成功";
        Response.Write("<script>alert('开团成功')</script>");
    }
}
       // Response.Write("ahogdhgodsngosujlsj");
       // Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('文件类型不正确，请选择扩展名为.xls的文件！');</script>");
       
    
    
    
   
        
  


   



