using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class MasterPage : System.Web.UI.MasterPage
{
    string mystr, sql1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          /*  if (Label1.Text != "首页")
            {
                Label1.Text = (this.ContentPlaceHolder1.FindControl("Label1") as Label).Text;
            }*/

           // if (Session["name"] != null || Session["name"] != "") { Label3.Text = Session["name"].ToString()+",欢迎登录"; }
          //  Label1.Text = Menu1.Items[0].ChildItems[0].Text;
            Label3.Text ="亲爱的管理员你好  欢迎登录";
             SqlConnection mycon1 = new SqlConnection();
             SqlCommand mycom1 = new SqlCommand();
             mystr=System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ToString();

             mycon1.ConnectionString = mystr;
             mycon1.Open();
             sql1 = "select rtrim(name) from alllist where typei=(Select typei from alllist where  name='" + Label1.Text + " ') and levelnum=2";
            // sql1 = "select name from alllist where typei=1";
             mycom1.CommandText = sql1;
             mycom1.Connection = mycon1;

           SqlDataReader myreader = mycom1.ExecuteReader();

           //  Label1.Text = sql1;

            //开始加树
           //  TreeView1.ShowCheckBoxes = TreeNodeTypes.Leaf | TreeNodeTypes.Parent;
           //  TreeView1.ExpandDepth = 2;
            // TreeView1.Nodes.Clear();
        while(myreader.Read()){

                  TreeNode n = new TreeNode(myreader[0].ToString());
             
            }
            mycon1.Close();
            myreader.Close();
           

        }
 
    }
   
   
}
