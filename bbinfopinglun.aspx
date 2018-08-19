<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="bbinfopinglun.aspx.cs" Inherits="Default2" %>

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
                            &nbsp;<span class="style5">评论信息管理</span></p>
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
                                    ForeColor="Black" GridLines="Horizontal" DataKeyNames="id" 
                                    AllowPaging="True">
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                                        <asp:BoundField DataField="id" HeaderText="id" 
                                            SortExpression="id" ReadOnly="True" />
                                        <asp:BoundField DataField="用户名" HeaderText="用户名" 
                                            SortExpression="用户名" />
                                        <asp:BoundField DataField="pickname" HeaderText="pickname" 
                                            SortExpression="pickname" />
                                        <asp:BoundField DataField="datetim" HeaderText="datetim" 
                                            SortExpression="datetim" />
                                        <asp:BoundField DataField="word" HeaderText="word" SortExpression="word" />
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
                                SelectCommand="SELECT * FROM [talkpick]" 
                                DeleteCommand="DELETE FROM [talkpick] WHERE [id] = @id" 
                                InsertCommand="INSERT INTO [talkpick] ([id], [用户名], [pickname], [datetim], [word]) VALUES (@id, @用户名, @pickname, @datetim, @word)" 
                                
                                
                                UpdateCommand="UPDATE [talkpick] SET [用户名] = @用户名, [pickname] = @pickname, [datetim] = @datetim, [word] = @word WHERE [id] = @id">
                                <DeleteParameters>
                                    <asp:Parameter Name="id" Type="String" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="用户名" Type="String" />
                                    <asp:Parameter Name="pickname" Type="String" />
                                    <asp:Parameter Name="datetim" Type="String" />
                                    <asp:Parameter Name="word" Type="String" />
                                    <asp:Parameter Name="id" Type="String" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="id" Type="String" />
                                    <asp:Parameter Name="用户名" Type="String" />
                                    <asp:Parameter Name="pickname" Type="String" />
                                    <asp:Parameter Name="datetim" Type="String" />
                                    <asp:Parameter Name="word" Type="String" />
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


