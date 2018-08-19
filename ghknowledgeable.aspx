<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ghknowledgeable.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: x-large;
            font-weight: bold;
            font-family: 微软雅黑;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="水果知识科普小课堂"></asp:Label>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">

                        <p>
                            &nbsp;</p>
    <p class="style2">
                            水果知识列表</p>
    <p>
                            &nbsp;</p>
                        <p>
                            
                             <asp:Image ID="Image7" runat="server" Height="5px"  
                                ImageUrl="~/picture/line.jpg" Width="1300px" />
                            
                            
                            </p>
                        <p>
                            &nbsp;</p>
    <p>
                            &nbsp;</p>
    <p>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource1" Width="100%" BackColor="White" 
                                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                ForeColor="Black" GridLines="Horizontal">
                                <Columns>
                                    <asp:BoundField DataField="fruitname" HeaderText="fruitname" 
                                        SortExpression="fruitname" Visible="False" />
                                    <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" 
                                        Visible="False" />
                                    <asp:ImageField DataImageUrlField="photo" 
                                        DataImageUrlFormatString="./picture/{0}">
                                    </asp:ImageField>
                                    <asp:HyperLinkField DataNavigateUrlFields="fruitname" 
                                        DataNavigateUrlFormatString="~/ghknowledgeable2.aspx?fruitname={0}" 
                                        DataTextField="fruitname" />
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT [fruitname], [photo] FROM [fruitkn]">
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
    <p>
                            &nbsp;</p>
                        <p>
                        </p>
                    
</asp:Content>


