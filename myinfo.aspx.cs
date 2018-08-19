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
        mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();

        mycon1.ConnectionString = mystr;
        mycon1.Open();
        if (Session["name"].ToString() != null || Session["name"].ToString() != "")
        {


            sql1 = "select * from uin where 用户名='" + Session["name"].ToString() + "'";
            mycom1.CommandText = sql1;
            mycom1.Connection = mycon1;
            SqlDataReader myreader = mycom1.ExecuteReader();
            while (myreader.Read())
            {
                uname.Text = myreader[0].ToString();
                upass.Text = myreader[1].ToString();
                DropDownList1.SelectedItem.Text = myreader[2].ToString();
                phone.Text = myreader[3].ToString();
                ad.Text = myreader[4].ToString();

            }

            myreader.Close();

            //  Request.Form["txtName1"].ToString();
            // Label3.Text = this.txtName1.ToString();

        }
        
        }

    protected void test(object sender, EventArgs e)
    { Label3.Text = this.txtName1.Value;
        Label4.Text = this.txtName2.Value;
        if (Label3.Text != Label4.Text)
        { Response.Write("<script>alert('密码改的不一样，请重新弄一下')</script>"); }
        else if ((Label3.Text == Label4.Text)&&(Label3.Text == upass.Text)) { Response.Write("<script>alert('逗我呢，密码跟以前一样啊·')</script>"); }
            else{
                sql2="UPDATE uin SET 密码 = '"+Label4.Text+" ' WHERE 用户名 = '"+uname.Text+"'";
             mycom1.CommandText = sql1;
            mycom1.Connection = mycon1;
            mycom1.ExecuteNonQuery();
            
            Response.Write( "<script>alert('修改成功！')</script>");
            
            
            
            }


    mycon1.Close();
       }
       // Response.Write("ahogdhgodsngosujlsj");
       // Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('文件类型不正确，请选择扩展名为.xls的文件！');</script>");
       
    
    
    
    }
        
  


   



