<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="fsnewfruit.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="新上水果" Visible="False"></asp:Label>
    <br />
    <asp:Image ID="Image2" runat="server" ImageUrl="~/picture/shop_副本.jpg" 
        Width="100%" />
    <br />
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">

                        <p>
                            &nbsp;</p>
                      <p style="font-family: 微软雅黑; font-size: x-large; font-weight: bold"> 新上水果列表</p>
                   <p>
                           </p>
    <p>
                            &nbsp;</p>
    <p>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource1" Width="100%" BackColor="White" 
                                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                ForeColor="Black" GridLines="Horizontal">
                                <Columns>
                                    <asp:ImageField DataImageUrlField="photo" 
                                        DataImageUrlFormatString="./picture/{0}">
                                        <ItemStyle HorizontalAlign="Center" Width="300px" />
                                    </asp:ImageField>
                                    <asp:HyperLinkField DataNavigateUrlFields="fruitname" 
                                        DataNavigateUrlFormatString="~/fsnewfruit2.aspx?fruitname={0}" 
                                        DataTextField="fruitname" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text="￥"></asp:Label>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                            <asp:Label ID="Label2" runat="server" Text="/KG"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="miao" SortExpression="miao" />
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [fruit]">
                            </asp:SqlDataSource>
    </p>
                        <p>
                        </p>
                    
</asp:Content>


