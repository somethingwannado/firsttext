using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Default2 : System.Web.UI.Page
{
    string mystr, sql1,sql2,sql3,sql4,sql5,sql6;
    int n;
 
    protected void Page_Load(object sender, EventArgs e)
    {
       // Label7.Text =  DetailsView1.Rows[3].Cells[1].Text;-------是50

        SqlConnection mycon1 = new SqlConnection();
        SqlCommand mycom1 = new SqlCommand();
        mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
        mycon1.ConnectionString = mystr;
        mycon1.Open();

        sql5 = "select rtrim(typee) from pick where pickname='" + DetailsView1.Rows[1].Cells[1].Text + "'";
         mycom1.CommandText = sql5;
         mycom1.Connection = mycon1;
        Label7.Text = mycom1.ExecuteScalar().ToString();//设置类型名
        Label10.Text = DetailsView1.Rows[2].Cells[1].Text;

            if (Label7.Text.Equals("购地"))
            {

                Label8.Visible = false;
                TextBox2.Visible = false;
                Calendar1.Visible = false;
                Button4.Visible = false;
                Button7.Visible = false;

                sql1 = "select count(*) from 团购项目 where pickname='" + DetailsView1.Rows[1].Cells[1].Text + "' ";
                mycom1.CommandText = sql1;
                mycom1.Connection = mycon1;
                int i = int.Parse((mycom1.ExecuteScalar().ToString()));
                n = 50 - i;

                {
                    if (DropDownList1.SelectedItem.Text == "组团")
                    {

                        Label5.Text = "当前该项目已参团人数：" + i + "人，还需" + (50 - i) + "人";

                        sql2 = "select afprice from pick where pickname='" + DetailsView1.Rows[1].Cells[1].Text + "'";
                        mycom1.CommandText = sql2;
                        mycom1.Connection = mycon1;

                        Label4.Text = (int.Parse((mycom1.ExecuteScalar().ToString()))).ToString();
                    }
                    else
                    {

                        sql3 = "select price from pick where pickname='" + DetailsView1.Rows[1].Cells[1].Text + "'";
                        mycom1.CommandText = sql3;
                        mycom1.Connection = mycon1;
                        Label4.Text = (int.Parse((mycom1.ExecuteScalar().ToString()))).ToString();
                    }
                }


            }
            else if (mycom1.ExecuteScalar().ToString() == "抢购")
            {
                Label8.Visible = false;
                TextBox2.Visible = false;
                Calendar1.Visible = false;
                Button4.Visible = false;//其他购买按钮
                Button6.Visible = false;//购地按钮
                Label9.Visible = false;
                DropDownList1.Visible = false;
                Label4.Text = "0";
                TextBox4.Text = "1";
                Label6.Text = "每个账号只限购一个哦";
            }
            else
            {
                Button6.Visible = false; Button7.Visible = false;

              //  sql1 = "select count(*) from 团购项目 where pickname='" + DetailsView1.Rows[1].Cells[1].Text + "' ";
              //  mycom1.CommandText = sql1;
              //  mycom1.Connection = mycon1;
              //  int i = int.Parse((mycom1.ExecuteScalar().ToString()));
              //  n = 50 - i;

                if (DropDownList1.SelectedItem.Text == "组团")
                {

                  //  Label5.Text = "当前该项目已参团人数：" + i + "人，还需" + (50 - i) + "人";

                    sql2 = "select afprice from pick where pickname='" + DetailsView1.Rows[1].Cells[1].Text + "'";
                    mycom1.CommandText = sql2;
                    mycom1.Connection = mycon1;

                    Label4.Text = (int.Parse((mycom1.ExecuteScalar().ToString()))).ToString();
                }
                else
                {

                    sql3 = "select price from pick where pickname='" + DetailsView1.Rows[1].Cells[1].Text + "'";
                    mycom1.CommandText = sql3;
                    mycom1.Connection = mycon1;
                    Label4.Text = (int.Parse((mycom1.ExecuteScalar().ToString()))).ToString();
                }



            }    
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        TextBox h = ((TextBox)(this.DetailsView1.Rows[4].Cells[1].FindControl("TextBox1")));
        string str = ((TextBox)(this.DetailsView1.Rows[4].Cells[1].FindControl("TextBox1"))).Text.Trim();
        int i = int.Parse(str);

        i = i + 1;
        h.Text = i.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        int i, j;

        TextBox h = ((TextBox)(this.DetailsView1.Rows[4].Cells[1].FindControl("TextBox1")));
        string str = ((TextBox)(this.DetailsView1.Rows[4].Cells[1].FindControl("TextBox1"))).Text.Trim();
        i = int.Parse(str);
        j = i-1;
        h.Text = j.ToString();
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        SqlConnection mycon1 = new SqlConnection();
        SqlCommand mycom1 = new SqlCommand();
        mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
        mycon1.ConnectionString = mystr;
        mycon1.Open();

        TextBox2.Text = Calendar1.SelectedDate.Month.ToString() + "." + Calendar1.SelectedDate.Day.ToString();
        if (int.Parse(Calendar1.SelectedDate.Day.ToString()) < int.Parse(DateTime.Now.Day.ToString()))
        {//日期不能选择比今天早的天数
            Response.Write("<script>alert('不能选择今天以前的时间哦！')</script>");
        }
        sql1 = "SELECT SUM(peo) From 团购项目 as a, dingdan as d where a.用户名=d.用户名 and  a.datatim=d.datetim and d.datetim='" + TextBox2.Text + "' and a.pickname=d.dingdanname and a.pickname='" + DetailsView1.Rows[1].Cells[1].Text + "'";
    
       // sql1 = "select count(*) from 团购项目 where pickname='" + DetailsView1.Rows[1].Cells[1].Text + "'and datatim='"+TextBox2.Text+"' ";
       // sql1 = "SELECT SUM(peo) From dingdan where datetim='" + TextBox2.Text + "' and dingdanname='" + TextBox2.Text + "'";
        mycom1.CommandText = sql1;
        mycom1.Connection = mycon1;
        mycom1.ExecuteScalar();
        if (mycom1.ExecuteScalar().ToString() != "")
        {
            int i = int.Parse((mycom1.ExecuteScalar().ToString()));
            n = 50 - i;

            if (DropDownList1.SelectedItem.Text == "组团")
            {

                Label5.Text = "当前该项目已参团人数：" + i + "人，还需" + (50 - i) + "人";

            }
        }
        else n = 50;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
         /*  SqlConnection mycon1 = new SqlConnection();
        SqlCommand mycom1 = new SqlCommand();
        mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
        mycon1.ConnectionString = mystr;
        mycon1.Open();

        sql1 = "select count(*) from 团购项目 ";
        mycom1.CommandText = sql1;
        mycom1.Connection = mycon1;
        int i=int.Parse((mycom1.ExecuteScalar().ToString()));
      
        if (DropDownList1.SelectedItem.Text == "组团") {

           Label5.Text = "当前以参团人数："+i+"人，还需"+(50-i)+"人";   
        
        }else {
          sql3 = "select price from pick where pickname='种植体验'";
            mycom1.CommandText = sql3;
            mycom1.Connection = mycon1;
            Label4.Text = (int.Parse((mycom1.ExecuteScalar().ToString()))).ToString();

            Label5.Text = "  ";
        */
       
        
        
     
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
         n = 50;
        SqlConnection mycon1 = new SqlConnection();
          SqlCommand mycom1 = new SqlCommand();
          mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
          mycon1.ConnectionString = mystr;
          mycon1.Open();
        Random r1 = new Random();
          int t = r1.Next(0, 10000);
          Session["pid"] = t.ToString();
      if ((DropDownList1.SelectedItem.Text == "组团") && (((int.Parse(TextBox4.Text)) > n) || ((int.Parse(TextBox4.Text)) < 0)))
      {
         

            Response.Write("<script>alert('数字输入不对哦')</script>");
            Label6.Text = "请输入0到" + n + "以内数字";
      }
      else
      {
          
              sql6 = "insert into 团购项目(id,pickname,用户名,way,typee,datatim) values('" + t.ToString() + "','" + DetailsView1.Rows[1].Cells[1].Text + "','','组团','体验','" + TextBox2.Text + "')";
              mycom1.CommandText = sql6;
              mycom1.Connection = mycon1;
              mycom1.ExecuteNonQuery();
              
       
         
          int a, b;
          a = int.Parse(TextBox4.Text);
          b = int.Parse(Label4.Text);
          sql4 = "insert into dingdan(id,用户名,dingdanname,datetim,peo,price,way,typee,pay) values('" + t.ToString() + "', '','" + DetailsView1.Rows[1].Cells[1].Text + "','" + TextBox2.Text + "'," + int.Parse(TextBox4.Text) + "," + int.Parse(Label4.Text) + ",'" + DropDownList1.SelectedItem.ToString() + "','" + DetailsView1.Rows[2].Cells[1].Text + "','0')";
          // sql4 = "  insert into dingdan(id,用户名,dingdanname,datetim,peo,price,typee,pay) values('9','的','的','','',null,'','')";
          mycom1.CommandText = sql4;
          mycom1.Connection = mycon1;
          mycom1.ExecuteNonQuery();
          

          mycon1.Close();

          //Response.Write("<script>alert('组团这')</script>");

         Response.Redirect("myshopping.aspx");


      }
            
         
    }
   
    protected void Button6_Click(object sender, EventArgs e)    //购买地按钮
    {
        SqlConnection mycon1 = new SqlConnection();
        SqlCommand mycom1 = new SqlCommand();
        mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
        mycon1.ConnectionString = mystr;
        mycon1.Open();
        Random r1 = new Random();
        int t = r1.Next(0, 10000);
        Session["pid"] = t.ToString();
       string b = DateTime.Now.Month.ToString() + "." + DateTime.Now.Day.ToString();
       sql4 = "insert into dingdan(id,用户名,dingdanname,datetim,peo,price,way,typee,pay) values('" + t.ToString() + "', '','" + DetailsView1.Rows[1].Cells[1].Text + "','" + TextBox2.Text + "'," + int.Parse(TextBox4.Text) + "," + int.Parse(Label4.Text) + ",'" + DetailsView1.Rows[2].Cells[1].Text + "','购地','0')";   
         
        mycom1.CommandText = sql4;
        mycom1.Connection = mycon1;
        mycom1.ExecuteNonQuery();

        sql6 = "insert into 团购项目(id,pickname,用户名,way,typee,datatim) values('" + t.ToString() + "','" + DetailsView1.Rows[1].Cells[1].Text + "','','组团','购地','" + TextBox2.Text + "')";
        mycom1.CommandText = sql6;
        mycom1.Connection = mycon1;
        mycom1.ExecuteNonQuery();


        mycon1.Close();
        Response.Redirect("myshopping.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)  //抢购按钮
    {
        SqlConnection mycon1 = new SqlConnection();
        SqlCommand mycom1 = new SqlCommand();
        mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();
        mycon1.ConnectionString = mystr;
        mycon1.Open();
        sql3 = "select count(*) from dingdan where typee='抢购'";
        
        mycom1.CommandText = sql3;
        mycom1.Connection = mycon1;
        mycom1.ExecuteNonQuery();  //  -------    //sql搜索已存在几名额

        if (int.Parse(mycom1.ExecuteNonQuery().ToString()) < 20)
        {

            Random r1 = new Random();
            int t = r1.Next(0, 10000);
            Session["pid"] = t.ToString();
            string b = DateTime.Now.Month.ToString() + "." + DateTime.Now.Day.ToString();
            sql4 = "insert into dingdan(id,用户名,dingdanname,datetim,peo,price,way,typee,pay) values('" + t.ToString() + "', '','" + DetailsView1.Rows[1].Cells[1].Text + "','" + b.ToString() + "', 1,0,'','抢购','0')";

            mycom1.CommandText = sql4;
            mycom1.Connection = mycon1;
            mycom1.ExecuteNonQuery();
            mycon1.Close();
            Response.Redirect("myshopping.aspx");


        }
        else
        {
            Response.Write("<script>alert('很遗憾，前20的名额已满。欢迎参与抢购活动,祝你下次成功！')</script>");
        }
    }

}   

