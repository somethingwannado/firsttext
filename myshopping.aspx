<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myshopping.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .box{
    width:70%; margin-top:10%; margin:auto; padding:28px;
    height:250px; border:1px #111 solid;
    display:none;           
}
.box.show{display:block;} 
.box .x{ font-size:18px; text-align:right; display:block;}
.box .n{ font-size:18px; text-align:center; }
.box input{width:50%; font-size:18px; margin-top:18px;}

        .style2
        {
            font-size: x-large;
            font-family: 微软雅黑;
            font-weight: bold;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="我的购物车" Visible="False"></asp:Label>
    <br />
    <asp:Image ID="Image2" runat="server" ImageUrl="~/picture/shop_副本.jpg" 
        Width="100%" />
    <br />
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">

                        <p>
                        <input type="button" onclick="Javascript:window.history.go(-1);"value="返回上一页">
                            &nbsp;</p>
                        <p>
                            &nbsp;</p>
                        <p>
                            <asp:Label ID="Label8" runat="server"></asp:Label>
                                <asp:Label ID="Label14" runat="server" Visible="False"></asp:Label>
                                </p>
    <p class="style2">
                            我的订单</p>
                        <p class="style2">
                            &nbsp;</p>
                        <p class="style2">
                            <asp:Image ID="Image3" runat="server" Height="8px" 
                                ImageUrl="~/picture/line.jpg" Width="1300px" />
                        </p>
                        <p class="style2">
                            &nbsp;</p>
                                <asp:GridView ID="GridView1" runat="server" 
                                    AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
                            BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" 
                            Width="100%">
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" />
                                        <asp:BoundField DataField="dingdanname" HeaderText="商品名" 
                                            SortExpression="dingdanname" />
                                        <asp:TemplateField HeaderText="单价">
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" runat="server" Text="￥"></asp:Label>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="+" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="个">
                                            <ItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" 
                                                    Text='<%# DataBinder.Eval(Container.DataItem,"peo") %>' Width="25px"></asp:TextBox>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="-" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="pay" HeaderText="支付状态" SortExpression="pay" />
                                        <asp:TemplateField HeaderText="价格">
                                            <ItemTemplate>
                                                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="way" HeaderText="方式" SortExpression="way" />
                                        <asp:BoundField DataField="typee" HeaderText="类型" SortExpression="typee" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                </asp:GridView>
                        <p>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                        </p>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                    ProviderName="System.Data.SqlClient" 
                                    SelectCommand="SELECT * FROM [dingdan] WHERE ([id] = @id)" 
                                    OldValuesParameterFormatString="original_{0}" 
                                    DeleteCommand="DELETE FROM [dingdan] WHERE [id] = @original_id" 
                                    InsertCommand="INSERT INTO [dingdan] ([id], [用户名], [dingdanname], [datetim], [peo], [price], [way], [typee], [pay]) VALUES (@id, @用户名, @dingdanname, @datetim, @peo, @price, @way, @typee, @pay)" UpdateCommand="UPDATE [dingdan] SET [用户名] = @用户名, [dingdanname] = @dingdanname, [datetim] = @datetim, [peo] = @peo, [price] = @price, [way] = @way, [typee] = @typee, [pay] = @pay WHERE [id] = @original_id" 
                                   >
                                    <SelectParameters>
                                        <asp:SessionParameter Name="id" SessionField="pid" Type="String" />
                                    </SelectParameters>
                                    <DeleteParameters>
                                        <asp:Parameter Name="original_id" Type="String" />
                                    </DeleteParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="用户名" Type="String" />
                                        <asp:Parameter Name="dingdanname" Type="String" />
                                        <asp:Parameter Name="datetim" Type="String" />
                                        <asp:Parameter Name="peo" Type="Int32" />
                                        <asp:Parameter Name="price" Type="Int32" />
                                        <asp:Parameter Name="way" Type="String" />
                                        <asp:Parameter Name="typee" Type="String" />
                                        <asp:Parameter Name="pay" Type="Boolean" />
                                        <asp:Parameter Name="original_id" Type="String" />
                                    </UpdateParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="id" Type="String" />
                                        <asp:Parameter Name="用户名" Type="String" />
                                        <asp:Parameter Name="dingdanname" Type="String" />
                                        <asp:Parameter Name="datetim" Type="String" />
                                        <asp:Parameter Name="peo" Type="Int32" />
                                        <asp:Parameter Name="price" Type="Int32" />
                                        <asp:Parameter Name="way" Type="String" />
                                        <asp:Parameter Name="typee" Type="String" />
                                        <asp:Parameter Name="pay" Type="Boolean" />
                                    </InsertParameters>
                                </asp:SqlDataSource>
                                <asp:Label ID="Label7" runat="server"></asp:Label>
                                <asp:Label ID="Label10" runat="server"></asp:Label>
                                <br />
                            </ContentTemplate>
                        </asp:UpdatePanel>
<p>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="付款" />
                        </p>
                        <p>
                            &nbsp;</p>
                        <p>
                            
                             <asp:Image ID="Image10" runat="server" Height="5px"  
                                ImageUrl="~/picture/line.jpg" Width="1300px" />
                            
                            
                            </p>
    <p>
                            &nbsp;</p>
<p class="style2">
                            本次完成订单交易</p>
<p>
                            &nbsp;</p>
<p>
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="id" DataSourceID="SqlDataSource2" BackColor="White" 
                                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                ForeColor="Black" GridLines="Horizontal" Width="100%">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                                        SortExpression="id" />
                                    <asp:BoundField DataField="用户名" HeaderText="用户名" SortExpression="用户名" />
                                    <asp:BoundField DataField="dingdanname" HeaderText="dingdanname" 
                                        SortExpression="dingdanname" />
                                    <asp:BoundField DataField="datetim" HeaderText="datetim" 
                                        SortExpression="datetim" />
                                    <asp:BoundField DataField="peo" HeaderText="peo" SortExpression="peo" />
                                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                    <asp:BoundField DataField="typee" HeaderText="typee" SortExpression="typee" />
                                    <asp:CheckBoxField DataField="pay" HeaderText="pay" SortExpression="pay" />
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
</p>
                        <p>
                            &nbsp;</p>
                        <p>
                            <asp:Label ID="Label11" runat="server"></asp:Label>
&nbsp;&nbsp;
                            <asp:Label ID="Label13" runat="server"></asp:Label>
</p>
<p>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT * FROM [dingdan] WHERE ([id] = @id)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="id" SessionField="pid" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
</p>
                        <p>
                             <input type="button" onclick="msgbox(1)" value="我想取消订单" />&nbsp;&nbsp;&nbsp;
                             <asp:Button ID="Button4" runat="server" Text="刷新订单状态" />
                        </p>
                        <table class="style1">
                            <tr>
                                <td>
                                
                                 <div id="inputbox" class="box" style="display: none;"> 
                                 
                              <a class='x' href=''; onclick="msgbox(0); return false;">关闭</a>&nbsp;
                                 天啊为什么取消 <a  class="n" >  </a>
                                   <a  class="n" >  </a>
         
              <textarea id="TextArea1" name="TextArea1" runat="server" cols="40" rows="2" style="width: 120px"></textarea>
      
        <input type="button" value="提交"  runat="server" id="txtName3" onserverclick="test"  />
     </div> 
                                    &nbsp;<asp:Label ID="Label12" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        
                                    
                            &nbsp;<p class="style2">
                            
                             <asp:Image ID="Image11" runat="server" Height="5px"  
                                ImageUrl="~/picture/line.jpg" Width="1300px" />
                            
                            
                            </p>
                        <p class="style2">
                            &nbsp;</p>
                        <p class="style2">
                            &nbsp;</p>
                        <p class="style2">
                            &nbsp;</p>
                        <p>
                            <asp:LinkButton ID="LinkButton8" runat="server" PostBackUrl="~/myhistory.aspx">查看历史订单</asp:LinkButton>
                        </p>
                        <p>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </p>
                        <p>
                            &nbsp;</p>
                        <p>
                            &nbsp;</p>
                        <p>
                            &nbsp;</p>
                        <p>
                            
                             <asp:Image ID="Image12" runat="server" Height="5px"  
                                ImageUrl="~/picture/line.jpg" Width="1300px" />
                            
                            
                            </p>
<p>
                            &nbsp;</p>
<p>
                            &nbsp;</p>
<p>
                            &nbsp;</p>
                        <p>
                            &nbsp;</p>
                                
      <script type="text/javascript">
           function msgbox(n) {
                             document.getElementById('inputbox').style.display = n ? 'block' : 'none';    
                         }
                  /*   <!--    function ms() {
                             if (document.getElementById("txtName1").value == document.getElementById("txtName2").value) {
                                 alert("密码修改通过")
                             }
                         }-->  */
     </script>       
</asp:Content>


