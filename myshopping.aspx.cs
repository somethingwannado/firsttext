using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    string mystr, sql1, sql2,sql3,sql4,sql;
    int n,i;
    Label l,l1;
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if( Session["del"]!=null){
            Label12.Text = Session["del"].ToString();
        
        }


        Session["n"] = (Master.FindControl("Label3") as Label).Text;
        GridView2.Visible = false;
        SqlConnection mycon1 = new SqlConnection();
        SqlCommand mycom1 = new SqlCommand();
        mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
        mycon1.ConnectionString = mystr;
       // Label7.Text = GridView1.Rows[0].Cells[7].Text;-----组团
        for (i = 0; i < GridView1.Rows.Count; i++)
        {
            l1 = GridView1.Rows[i].FindControl("Label9") as Label;

        }
        mycon1.Open();

        if (Session["pid"] == null) {
            Response.Write("<script>alert('您还没有选购的商品，可以先去看看喜欢什么~');location.href='shouabout.aspx'</script>");
        }
        else
        {

            sql1 = "select  价格=peo*price  from dingdan where id='" + Session["pid"].ToString() + "'";
            mycom1.CommandText = sql1;
            mycom1.Connection = mycon1;
            l1.Text = (int.Parse((mycom1.ExecuteScalar().ToString()))).ToString();


        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      
       
        TextBox t;
        for (i = 0; i < GridView1.Rows.Count; i++)
        {
            t = GridView1.Rows[i].FindControl("TextBox1") as TextBox;
            //n = GridView1.Rows[1].Cells[1].Text;
            l = GridView1.Rows[i].FindControl("Label5") as Label;
            l1 = GridView1.Rows[i].FindControl("Label9") as Label;
            i = int.Parse(t.Text);

            i = i + 1;
            t.Text = i.ToString();
            l1.Text = (i * (int.Parse(l.Text))).ToString();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
     
        TextBox t;
        for (i = 0; i < GridView1.Rows.Count; i++)
        {
            t = GridView1.Rows[i].FindControl("TextBox1") as TextBox;
           // n = GridView1.Rows[i].Cells[8].Text;
          //  Label7.Text = n;
            l = GridView1.Rows[i].FindControl("Label5") as Label;
            i = int.Parse(t.Text)-1;

          //  int v = Convert.ToInt32(n.ToString());
          //   t.Text = (v - 1).ToString();

          //  i = i - 1;
            t.Text = i.ToString();

            l1.Text = (i * (int.Parse(l.Text))).ToString();
        } 
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //this.TextBox1.Text = 
        string lll=(Master.FindControl("Label3") as Label).Text;     //获取用户名
      // Label8.Text = lll.ToString();
        SqlConnection mycon1 = new SqlConnection();
        SqlCommand mycom1 = new SqlCommand();
        mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
        mycon1.ConnectionString = mystr;

        mycon1.Open();


        if (lll.ToString() =="未登录")
        {
            Response.Write("<script>alert('要先登录才能付款成功哦~');location.href='myloginn.aspx'</script>");

        }
        else {
            
            Random r1 = new Random();
            int t = r1.Next(0, 10000);
            GridView1.Visible = false;
            sql2 = "update dingdan set 用户名='" + lll.ToString() + "' where id='" + Session["pid"].ToString() + "'";

            mycom1.CommandText = sql2;
            mycom1.Connection = mycon1;
            mycom1.ExecuteNonQuery();

            sql3 = "update 团购项目 set 用户名='" + lll.ToString() + "' where id='" + Session["pid"].ToString() + "' and way='" + GridView1.Rows[0].Cells[7].Text + "' ";
            mycom1.CommandText = sql3;
            mycom1.Connection = mycon1;
            mycom1.ExecuteNonQuery();
          

           // Label8.Text = sql3;
            //mycom1.ExecuteNonQuery();

            sql4 = "update dingdan set pay=-1 where id='" + Session["pid"].ToString() + "'";

            mycom1.CommandText = sql4;
            mycom1.Connection = mycon1;
            mycom1.ExecuteNonQuery();


//创建新评论表
            sql = "insert into talkpick(id,用户名,pickname,datetim,word) values('" + Session["pid"].ToString() + "','" + lll.ToString() + "','" + GridView1.Rows[0].Cells[1].Text + "','','')";

            mycom1.CommandText = sql;
            mycom1.Connection = mycon1;
            mycom1.ExecuteNonQuery();
          //  Label14.Text = sql;


            GridView2.Visible = true;
            Label11.Text = "温馨提示，如果体验订单在时间开始前1天不想去，可以取消订单哦~";
           // Label10.Text = sql2;
            Response.Write("<script>alert('付款成功~')</script>");

        } mycon1.Close();

    }


    protected void test(object sender, EventArgs e)
    {
       // Label3.Text = this.txtName1.Value;
        SqlConnection mycon1 = new SqlConnection();
        SqlCommand mycom1 = new SqlCommand();
        mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
        mycon1.ConnectionString = mystr;

        mycon1.Open();


        string a,b,c;
        a = this.TextArea1.Value;
        b = DateTime.Now.Month.ToString() + "." + DateTime.Now.Day.ToString();
        c = GridView2.Rows[0].Cells[3].Text;
 
  //GridView2.Rows[0].Cells[6].Text = "体验";
        //判断时间是否为前一天再insert------------------------------
        if ((GridView2.Rows[0].Cells[6].Text).Equals("体验") || (GridView2.Rows[0].Cells[6].Text).Equals("购地"))
        {

           Response.Write("<script>alert('抢购或者活动类型的项目不能取消订单哦！')</script>");
        }
        else { 
         sql3 = "insert into deldingdan(id,pickname,用户名,datetim,typee,reason) values('" + GridView2.Rows[0].Cells[0].Text + "','" + GridView2.Rows[0].Cells[2].Text + "','" + GridView2.Rows[0].Cells[1].Text + "','" + b.ToString() + "','" + GridView2.Rows[0].Cells[6].Text + "','" + a.ToString() + "')";
          // Label13.Text = sql3;
            mycom1.CommandText = sql3;
            mycom1.Connection = mycon1;
            mycom1.ExecuteNonQuery();
            Label12.Text = "待审核请稍后";
            Response.Write("<script>alert('已提交取消订单申请！请静静等待')</script>");
        
        }
      

        mycon1.Close();
    }


  
}
