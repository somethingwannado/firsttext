﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
        j = i - 1;
        h.Text = j.ToString();
    }
}
