<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shouyezuixinxiaoxi.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label1" runat="server" Text="果园最新消息" Visible="False"></asp:Label>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/picture/justlike,tou.jpg" 
            Width="100%" />
    </p>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">

                        <p class="style9">
                            &nbsp;</p>
<p class="style9" 
    style="font-family: 微软雅黑; color: #000000; font-size: x-large; font-weight: bold;">
                            最新消息列表</p>
<p class="style9" 
    style="font-family: 微软雅黑; color: #000000; font-size: x-large; font-weight: bold;">
                            &nbsp;</p>
<p class="style9">
                            &nbsp;</p>
<p class="style9">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                DataSourceID="SqlDataSource1" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                                HorizontalAlign="Center" Width="100%" CellPadding="4" ForeColor="Black" 
                                GridLines="Horizontal">
                                <Columns>
                                    <asp:ImageField 
                                        DataImageUrlField="photo" DataImageUrlFormatString="./picture/{0}">
                                        <ControlStyle Height="300px" />
                                    </asp:ImageField>
                                    <asp:HyperLinkField DataTextField="title" DataNavigateUrlFields="title" DataNavigateUrlFormatString="~/shouyezuixinxiaoxi2.aspx?title={0}" 
                                         />
                                    <asp:BoundField DataField="datetim" 
                                        SortExpression="datetim" />
                                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" 
                                        Visible="False" />
                                    <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" 
                                        Visible="False" />
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <EmptyDataTemplate>
                                    <asp:HyperLink ID="HyperLink2" runat="server" Text='<%# Eval("title") %>'></asp:HyperLink>
                                    <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("title") %>'></asp:HyperLink>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("title") %>'></asp:TextBox>
                                </EmptyDataTemplate>
                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [news]">
                            </asp:SqlDataSource>
                        </p>
                        <p>
                        
                        
                        
                        
                            &nbsp;</p>
<p>
                        
                        
                        
                        
                            &nbsp;</p>
<p>
                        
                        
                        
                        
                            &nbsp;</p>
<p>
                        
                        
                        
                        
                            &nbsp;</p>
<p>
                        
                        
                        
                        
                            &nbsp;</p>
<p>
                        
                        
                        
                        
                            &nbsp;</p>
<p>
                        
                        
                        
                        
                            &nbsp;</p>
                    
</asp:Content>


