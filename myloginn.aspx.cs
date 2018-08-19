using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    string mystr, sql1,sql2;
  
       
    protected void Page_Load(object sender, EventArgs e)
    {  
         SqlConnection mycon1 = new SqlConnection();
    SqlCommand mycom1 = new SqlCommand();
        mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();

        mycon1.ConnectionString = mystr;
        mycon1.Open();

    } 
    
    
   protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("myzhuce.aspx");
    }
   protected void Button2_Click(object sender, EventArgs e)
   {
       if (uname.Text.Equals("bb") && upass.Text.Equals("123"))
       {
           Server.Transfer("bbmyinfo.aspx");

       }
       else
       {

           Session["name"] = uname.Text;

           SqlConnection mycon1 = new SqlConnection();
           SqlCommand mycom1 = new SqlCommand();
           mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();

           mycon1.ConnectionString = mystr;
           mycon1.Open();
           sql1 = "select  用户名,rtrim(密码) from uin where 用户名='" + uname.Text + " '";
           mycom1.CommandText = sql1;
           mycom1.Connection = mycon1;

           SqlDataReader myreader = mycom1.ExecuteReader();
           while (myreader.Read())
           {
               if (myreader[0].ToString() != null || myreader[0].ToString() != "")
               {
                   if (myreader[1].ToString() != upass.Text)
                   {
                       Response.Write("<script>alert('您密码输入错误，请仔细检查！')</script>"); break;
                   }
                   else
                   {
                       Label2.Text = myreader[0] + "客户,欢迎回来!"; Session["name"] = uname.Text;
                   }
               }
               // else Response.Write("<script>alert('您是不是输错了，或者还没注册，检查一下吧~')</script>");

           }
           /* if (Session["pid"] == null) {

                Response.Write("<script>alert('您还没有选购的商品，可以先去看看喜欢什么~');location.href='shouabout.aspx'</script>");
            }
            else
            {
                sql2 = "update dingdan set 用户名='" + uname.Text + "' where id=" + Session["pid"].ToString() + "'";

                mycom1.CommandText = sql1;
                mycom1.Connection = mycon1;

           
            
            }*/
           myreader.Close();
           mycon1.Close();
       }
   }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection mycon1 = new SqlConnection();
        SqlCommand mycom1 = new SqlCommand();
        mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();

        mycon1.ConnectionString = mystr;
        mycon1.Open();
        if (Session["pid"] == null)
        {

            Response.Write("<script>alert('您还没有选购的商品，可以先去看看喜欢什么~');location.href='shouabout.aspx'</script>");
        }
        else
        {
            sql2 = "update dingdan set 用户名='" + uname.Text + "' where id=" + Session["pid"].ToString() + "'";

            mycom1.CommandText = sql1;
            mycom1.Connection = mycon1;



        }
    }
}
