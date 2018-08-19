<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="bbshouyezuixinxiaoxi.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            color: #FFFFFF;
        }
        .style10
        {
            font-size: x-large;
            font-weight: bold;
            font-family: 微软雅黑;
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
                        <p class="style10" >
                            新闻编辑处</p>
                        <p class="style9">
                            &nbsp;</p>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" 
                                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                    DataSourceID="SqlDataSource1" HorizontalAlign="Center" 
                                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                            Width="100%" CellPadding="4" DataKeyNames="id" ForeColor="Black" 
                            GridLines="Horizontal">
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                            ShowSelectButton="True" />
                                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" 
                                            ReadOnly="True" />
                                        <asp:BoundField DataField="title" SortExpression="title" HeaderText="title" 
                                            Visible="False" />
                                        <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                                        <asp:HyperLinkField DataNavigateUrlFields="title" 
                                            DataNavigateUrlFormatString="~/bbshouyezuixinxiaoxi2.aspx?title={0}" 
                                            DataTextField="title" />
                                        <asp:BoundField DataField="datetim" HeaderText="datetim" 
                                            SortExpression="datetim" />
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
                                    DeleteCommand="DELETE FROM [news] WHERE [id] = @original_id" 
                                    InsertCommand="INSERT INTO [news] ([id], [title], [photo], [datetim]) VALUES (@id, @title, @photo, @datetim)" 
                                    OldValuesParameterFormatString="original_{0}" 
                                    ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [news]" 
                                    
                                    
                            
                            UpdateCommand="UPDATE [news] SET [title] = @title, [photo] = @photo, [datetim] = @datetim WHERE [id] = @original_id">
                                    <DeleteParameters>
                                        <asp:Parameter Name="original_id" Type="String" />
                                    </DeleteParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="title" Type="String" />
                                        <asp:Parameter Name="photo" Type="String" />
                                        <asp:Parameter Name="datetim" Type="String" />
                                        <asp:Parameter Name="original_id" Type="String" />
                                    </UpdateParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="id" Type="String" />
                                        <asp:Parameter Name="title" Type="String" />
                                        <asp:Parameter Name="photo" Type="String" />
                                        <asp:Parameter Name="datetim" Type="String" />
                                    </InsertParameters>
                                </asp:SqlDataSource>
                        <p class="style9">
                            &nbsp;</p>
                        <p class="style9">
                            &nbsp;</p>
                        <p >
                                新增列
                             
                                <br __designer:mapid="978" />
                                &nbsp;&nbsp;&nbsp;&nbsp; id ：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                <br __designer:mapid="97a" />
                                &nbsp;图片名：&nbsp; &nbsp;
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                <br __designer:mapid="97c" />
                                标题名：&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                <br __designer:mapid="97e" />
                                &nbsp;发布时间：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </p>
                        <p class="style9">
                            &nbsp;</p>
                        <p>
                        
                        
                        
                        
                            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                        </p>
<p>
                        
                        
                        
                        
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                Text="确认添加" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" Text="刷新" />
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
                    
</asp:Content>


