using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    string mystr, sql1;

    SqlConnection mycon1 = new SqlConnection();
    SqlCommand mycom1 = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

        mystr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();

        mycon1.ConnectionString = mystr;
        mycon1.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (uname.Text != null && upass.Text != null && DropDownList1.SelectedItem.ToString() != null && phone.Text != null)
        {
            sql1 = "insert into uin(用户名,密码,性别,手机,地址) values(@a,@b,@c,@d,@f)";
            mycom1.Parameters.Add("@a", System.Data.SqlDbType.Char, 10).Value = uname.Text;
            mycom1.Parameters.Add("@b", System.Data.SqlDbType.Char, 10).Value = upass.Text;
            mycom1.Parameters.Add("@c", System.Data.SqlDbType.Char, 10).Value = DropDownList1.SelectedItem.ToString();
            mycom1.Parameters.Add("@d", System.Data.SqlDbType.Char, 10).Value = phone.Text;
            mycom1.Parameters.Add("@f", System.Data.SqlDbType.Char, 100).Value = ad.Text;
            mycom1.CommandText = sql1;
            mycom1.Connection = mycon1;
            mycom1.ExecuteNonQuery();
            Label2.Text = uname.Text + "客户,注册成功!";
            mycon1.Close();
        }
        else Response.Write("<script>alert('请确认填完所需内容后，再点击注册')</script>");
    }
}
