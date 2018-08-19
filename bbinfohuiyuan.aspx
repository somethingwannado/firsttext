<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="bbinfohuiyuan.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            font-size: x-large;
            font-weight: bold;
            font-family: 微软雅黑;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="水果采摘" Visible="False"></asp:Label>
    <br />
    <asp:Image ID="Image2" runat="server" ImageUrl="~/picture/trybg2.jpg" 
    Width="100%" />
    <br />
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">

                        <p>
                            &nbsp;</p>
                        <p>
                            &nbsp;<span class="style5">会员信息管理</span></p>
    <p>
                            &nbsp;</p>
                        <p>
                            
                             <asp:Image ID="Image10" runat="server" Height="5px"  
                                ImageUrl="~/picture/line.jpg" Width="1300px" />
                            
                            
                            </p>
                        <p>
                            &nbsp;</p>
                        <p>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                        </p>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    DataSourceID="SqlDataSource1" Width="100%" BackColor="White" 
                                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                    ForeColor="Black" GridLines="Horizontal" DataKeyNames="用户名">
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" />
                                        <asp:BoundField DataField="用户名" HeaderText="用户名" 
                                            SortExpression="用户名" ReadOnly="True" />
                                        <asp:BoundField DataField="密码" HeaderText="密码" 
                                            SortExpression="密码" />
                                        <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                                        <asp:BoundField DataField="手机" HeaderText="手机" 
                                            SortExpression="手机" />
                                        <asp:BoundField DataField="地址" HeaderText="地址" SortExpression="地址" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <EmptyDataTemplate>
                                        <asp:Label ID="Label3" runat="server" 
                                            Text='<%# DataBinder.Eval(Container.DataItem,"￥") %>'></asp:Label>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                    </EmptyDataTemplate>
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                </asp:GridView>
                                <br />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <p>
                        </p>
                        <p>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT * FROM [uin]" 
                                DeleteCommand="DELETE FROM [uin] WHERE [用户名] = @用户名" 
                                InsertCommand="INSERT INTO [uin] ([用户名], [密码], [性别], [手机], [地址]) VALUES (@用户名, @密码, @性别, @手机, @地址)" 
                                
                                UpdateCommand="UPDATE [uin] SET [密码] = @密码, [性别] = @性别, [手机] = @手机, [地址] = @地址 WHERE [用户名] = @用户名">
                                <DeleteParameters>
                                    <asp:Parameter Name="用户名" Type="String" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="密码" Type="String" />
                                    <asp:Parameter Name="性别" Type="String" />
                                    <asp:Parameter Name="手机" Type="String" />
                                    <asp:Parameter Name="地址" Type="String" />
                                    <asp:Parameter Name="用户名" Type="String" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="用户名" Type="String" />
                                    <asp:Parameter Name="密码" Type="String" />
                                    <asp:Parameter Name="性别" Type="String" />
                                    <asp:Parameter Name="手机" Type="String" />
                                    <asp:Parameter Name="地址" Type="String" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                        </p>
                        <p>
                        </p>
                        <p>
                        </p>
                        <p>
                        </p>
                        
                        
                        
                        
                        
                    
</asp:Content>


