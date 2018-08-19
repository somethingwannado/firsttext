<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="bbshouyezuixinxiaoxi2.aspx.cs" Inherits="Default2" %>

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
                            <asp:Button ID="Button1" runat="server" 
                                PostBackUrl="~/bbshouyezuixinxiaoxi.aspx" Text="返回" />
                            </p>
                        <p class="style10">
                            内容编辑</p>
                        <p class="style10">
                            <asp:Image ID="Image3" runat="server" Height="8px" 
                                ImageUrl="~/picture/line.jpg" Width="1200px" />
                        </p>
<p class="style9">
                            <asp:DetailsView ID="DetailsView11" runat="server" AutoGenerateRows="False" 
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="4" DataSourceID="SqlDataSource1" Width="80%" Height="80%" 
                                DataKeyNames="id" ForeColor="Black" GridLines="Horizontal">
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <Fields>
                                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" 
                                        ReadOnly="True" />
                                    <asp:BoundField DataField="title" SortExpression="title" HeaderText="title" >
                                    </asp:BoundField>
                                    <asp:BoundField DataField="arcitle" SortExpression="arcitle" 
                                        HeaderText="arcitle" >
                                    </asp:BoundField>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                        ShowInsertButton="True" />
                                </Fields>
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            </asp:DetailsView>
                        </p>
                        <p class="style9">
                            &nbsp;</p>
                        <p class="style9">
                            &nbsp;</p>
                        <p class="style9">
                            &nbsp;</p>
                        <p class="style9">
                            &nbsp;</p>
                        <p class="style9">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT * FROM [wen] WHERE ([title] = @title)" 
                                DeleteCommand="DELETE FROM [wen] WHERE [id] = @original_id" 
                                InsertCommand="INSERT INTO [wen] ([id], [title], [arcitle]) VALUES (@id, @title, @arcitle)" 
                                OldValuesParameterFormatString="original_{0}" 
                                
                                UpdateCommand="UPDATE [wen] SET [title] = @title, [arcitle] = @arcitle WHERE [id] = @original_id">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="title" QueryStringField="title" Type="String" />
                                </SelectParameters>
                                <DeleteParameters>
                                    <asp:Parameter Name="original_id" Type="String" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="title" Type="String" />
                                    <asp:Parameter Name="arcitle" Type="String" />
                                    <asp:Parameter Name="original_id" Type="String" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="id" Type="String" />
                                    <asp:Parameter Name="title" Type="String" />
                                    <asp:Parameter Name="arcitle" Type="String" />
                                </InsertParameters>
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


