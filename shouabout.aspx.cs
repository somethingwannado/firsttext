using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Page.IsPostBack == false) {
            ViewState["number"] = 1;

           // if (Session["name"] != null || Session["name"] != "") { LinkButton8.Text = Session["name"].ToString() + ",欢迎登录"; }
        }
    }


  
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        ViewState["number"] = (int)ViewState["number"] % 17 + 1;
        Image2.ImageUrl = string.Format("~/picture/view{0}.jpeg", ViewState["number"]);
    }
}
