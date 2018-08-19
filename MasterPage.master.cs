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
            if (Label1.Text != "首页")
            {
                Label1.Text = (this.ContentPlaceHolder1.FindControl("Label1") as Label).Text;
            }

            if (Session["name"] == null) {Label3.Text = "未登录"; } else {

                Label3.Text = Session["name"].ToString();
                Label4.Text=",欢迎登录";
                
            
            }
          // Label1.Text = Menu1.Items[0].ChildItems[0].Text;

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
                TreeView1.Nodes.Add(n);
              /*   n = new TreeNode(myreader[1].ToString());
                TreeView1.Nodes[0].ChildNodes.Add(n);
                n = new TreeNode(myreader[2].ToString());
                TreeView1.Nodes[0].ChildNodes.Add(n);
                n = new TreeNode(myreader[3].ToString());
                TreeView1.Nodes[0].ChildNodes.Add(n);   */
                TreeView1.ShowLines = true;
          
               
            }
            mycon1.Close();
            myreader.Close();
           

        }
 
       
    }
    
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        string a = TreeView1.SelectedNode.Text;//TreeView1.SelectedNode.NavigateUrl = "~/shouyejianjie.aspx";
        if (a.ToString() == "果园简介") { Response.Redirect("~/shouyejianjie.aspx"); }
        else if (a.ToString() == "果园风景") {  Response.Redirect("~/shouyefengjing.aspx")  ; }
  
        else if (a.ToString() == "果园最新消息") { Response.Redirect("~/shouyezuixinxiaoxi.aspx"); }
        else if (a.ToString() == "水果采摘") { Response.Redirect( "~/ghpickfruit.aspx"); }
        else if (a.ToString() == "果园观赏") { Response.Redirect("~/ghtravel.aspx"); }
        else if (a.ToString() == "自养树苗") { Response.Redirect( "~/ghplanttree.aspx"); }
        else if (a.ToString() == "水果知识科普小课堂") { Response.Redirect( "~/ghknowledgeable.aspx"); }
        else if (a.ToString() == "新上水果") { Response.Redirect( "~/fsnewfruit.aspx"); }
        else if (a.ToString() == "热销水果") { Response.Redirect( "~/fshotfruits.aspx"); }
        else if (a.ToString() == "折扣水果") {Response.Redirect( "~/fscheapfruits.aspx"); }
        else if (a.ToString() == "预定餐馆") { Response.Redirect( "~/reserveeat.aspx"); }
        else if (a.ToString() == "预定宾馆") { Response.Redirect( "~/reservelivingroom.aspx"); }
        else if (a.ToString() == "我的信息") { Response.Redirect( "~/myinfo.aspx"); }
        else if (a.ToString() == "我的购物车") { Response.Redirect( "~/myshopping.aspx"); }
        else if (a.ToString() == "我购买过的东西") { Response.Redirect("~/myhistory.aspx"); }

       // Response.AddHeader("Refresh", "0"); 
       // Response.Redirect(Request.Url.ToString());
        
       
    }
}
