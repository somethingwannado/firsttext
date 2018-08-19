<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shouyezuixinxiaoxi2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            color: #FFFFFF;
            padding-top:20px;
            padding-left:20px;
        }
    .style10
    {
        color: #000000;
        padding-top: 20px;
        padding-left: 20px;
        font-weight: bold;
        font-size: x-large;
        font-family: 微软雅黑;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label1" runat="server" Text="果园最新消息" Visible="False"></asp:Label>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/picture/justlike,tou.jpg" />
    </p>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">

                        <p class="style10">
                            消息详情</p>
<p class="style10">
                            
                             <asp:Image ID="Image10" runat="server" Height="5px"  
                                ImageUrl="~/picture/line.jpg" Width="1300px" />
                            
                            
                            </p>
<p class="style9">
                            <asp:DetailsView ID="DetailsView11" runat="server" AutoGenerateRows="False" 
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="4" DataSourceID="SqlDataSource1" Width="100%" 
                                ForeColor="Black" GridLines="Horizontal">
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <Fields>
                                    <asp:BoundField DataField="title" SortExpression="title" >
                                    <ControlStyle Font-Bold="True" Font-Names="微软雅黑" Font-Size="25pt" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="arcitle" SortExpression="arcitle" >
                                    <ItemStyle Font-Names="微软雅黑" HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                </Fields>
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT [title], [arcitle] FROM [wen] WHERE ([title] = @title)">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="title" QueryStringField="title" Type="String" />
                                </SelectParameters>
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
                    
</asp:Content>


