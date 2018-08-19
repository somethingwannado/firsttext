<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ghplanttree.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
    .style4
    {
        font-family: 微软雅黑;
        font-weight: bold;
        font-size: x-large;
    }
    .style5
    {
        height: 61px;
    }
    .style6
    {
        height: 58px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="自养树苗" Visible="False"></asp:Label>
<br />
<asp:Image ID="Image12" runat="server" ImageUrl="~/picture/bbzii_副本.jpg" 
    Width="100%" />
<br />
<br />
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">

                        <p>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p>
                            <span class="style4">自养树苗</span></p>
<p>
                            &nbsp;</p>
<p>
                            <asp:Image ID="Image8" runat="server" Height="8px" 
                                ImageUrl="~/picture/line.jpg" Width="1300px" />
                        </p>
<p>
                            &nbsp;</p>
    <p>
                            &nbsp;&nbsp;&nbsp;<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 为了让您和孩子了解树苗的成长，我们特意设置了这个活动，让大家参与体验。</b></p>
    <p>
                            &nbsp;</p>
                        <p>
                            &nbsp;</p>
<p>
                            
                             <asp:Image ID="Image9" runat="server" Height="5px"  
                                ImageUrl="~/picture/line.jpg" Width="1300px" />
                            
                            
                            </p>
<p>
                            &nbsp;</p>
                        <p class="style4">
                            树苗种类介绍</p>
                        <p>
                            &nbsp;</p>
                        <table class="style3" border="1" 
    style="border: 1px solid #000000;">
                            <tr>
                                <td>
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/picture/sm1.jpg" 
                                        Width="400px" Height="250px" />
                                </td>
                                <td>
                                    <asp:Image ID="Image3" runat="server" ImageUrl="~/picture/sm2.jpg" Width="400px"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    <br />
                                    &nbsp;
                                    <b>苹果苗</b><br />
                                    <br />
                                </td>
                                <td class="style5">
                                    &nbsp;&nbsp;<b>
                                    草莓苗</b></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image4" runat="server" ImageUrl="~/picture/sm3.jpg" Width="400px"/>
                                </td>
                                <td>
                                    <asp:Image ID="Image5" runat="server" ImageUrl="~/picture/sm4.jpg" 
                                        Width="400px" Height="225px"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br />
&nbsp;&nbsp; <b>葡萄苗</b><br />
                                    <br />
                                </td>
                                <td>
                                    <b>火龙果苗</b><br />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image6" runat="server" ImageUrl="~/picture/sm5.jpg"  Width="400px"/>
                                </td>
                                <td>
                                    <asp:Image ID="Image7" runat="server" ImageUrl="~/picture/sm6.jpg"   Width="400px"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    <br />
                                    <b>百香果苗</b><br />
                                    <br />
                                </td>
                                <td class="style6">
                                    <b>番茄苗</b></td>
                            </tr>
                        </table>
                        <p>
                            
                             <asp:Image ID="Image11" runat="server" Height="5px"  
                                ImageUrl="~/picture/line.jpg" Width="1300px" />
                            
                            
                            </p>
                        <p>
                            &nbsp;</p>
                        <table class="style3">
                            <tr>
                                <td>
                                    <span class="style4">活动详情</span><br />
                                    <br />
                            
                             <asp:Image ID="Image10" runat="server" Height="5px"  
                                ImageUrl="~/picture/line.jpg" Width="1300px" />
                            
                            
                                    <br />
                                    <br />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                       >
                                        <asp:ListItem>全部</asp:ListItem>
                                        <asp:ListItem>活动</asp:ListItem>
                                        <asp:ListItem>体验</asp:ListItem>
                                        <asp:ListItem>购地</asp:ListItem>
                                        <asp:ListItem>抢购</asp:ListItem>
                                    </asp:DropDownList>
&nbsp;<br />
                                    <br />
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                        DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="White" 
                                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                        ForeColor="Black" GridLines="Horizontal">
                                        <Columns>
                                            <asp:BoundField DataField="pickname" HeaderText="pickname" 
                                                SortExpression="pickname" Visible="False" />
                                            <asp:BoundField DataField="typee" HeaderText="活动类型" SortExpression="typee" />
                                            <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" 
                                                Visible="False" />
                                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" 
                                                Visible="False" />
                                            <asp:BoundField DataField="miao" HeaderText="活动描述" SortExpression="miao" />
                                            <asp:BoundField DataField="btype" HeaderText="btype" SortExpression="btype" 
                                                Visible="False" />
                                            <asp:BoundField DataField="id" ReadOnly="True" 
                                                SortExpression="id" HeaderText="id" Visible="False" />
                                            <asp:HyperLinkField DataNavigateUrlFields="pickname" 
                                                DataNavigateUrlFormatString="~/ghplanttree2.aspx?pickname={0}" 
                                                DataTextField="pickname" HeaderText="进入详情预约" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                        ProviderName="System.Data.SqlClient" 
                                        
                                        SelectCommand="SELECT * FROM [pick] WHERE ([btype] = @btype) ORDER BY [id] DESC">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList1" Name="btype" 
                                                PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <br />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        DataKeyNames="id" DataSourceID="SqlDataSource2" BackColor="White" 
                                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                        ForeColor="Black" GridLines="Horizontal" >
                                         <Columns>
                                            <asp:BoundField DataField="pickname" HeaderText="pickname" 
                                                SortExpression="pickname" Visible="False" />
                                            <asp:BoundField DataField="typee" HeaderText="活动类型" SortExpression="typee" />
                                            <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" 
                                                Visible="False" />
                                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" 
                                                Visible="False" />
                                            <asp:BoundField DataField="miao" HeaderText="活动描述" SortExpression="miao" />
                                            <asp:BoundField DataField="btype" HeaderText="btype" SortExpression="btype" 
                                                Visible="False" />
                                            <asp:BoundField DataField="id" ReadOnly="True" 
                                                SortExpression="id" HeaderText="id" Visible="False" />
                                            <asp:HyperLinkField DataNavigateUrlFields="pickname" 
                                                DataNavigateUrlFormatString="~/ghplanttree2.aspx?pickname={0}" 
                                                DataTextField="pickname" HeaderText="进入详情预约" />
                                        </Columns>
                                         <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                         <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                         <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                         <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                        ProviderName="System.Data.SqlClient" 
                                        SelectCommand="SELECT * FROM [pick] WHERE ([typee] = @typee)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList1" Name="typee" 
                                                PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <br />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <p>
                            &nbsp;</p>
    <p>
                            &nbsp;</p>
                        <p>
                        </p>
                        <p>
                        </p>
                        <p>
                        </p>
                    
</asp:Content>


