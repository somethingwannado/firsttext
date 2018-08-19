<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ghpickfruit2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
                            <asp:Button ID="Button3" runat="server" PostBackUrl="~/ghpickfruit.aspx" 
                                Text="返回采摘列表" />
                        </p>
                        <p>
                            &nbsp;</p>
                            
                             <p style="font-family: 微软雅黑; font-size: x-large; font-weight: bold"> 采摘门票详细</p>
                        
    <p>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                        </p>
                        <p>
                            &nbsp;</p>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <br />
                                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                    DataSourceID="SqlDataSource1" Width="100%" BackColor="White" 
                                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                    ForeColor="Black" GridLines="Horizontal">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <Fields>
                                        <asp:ImageField DataImageUrlField="photo" 
                                            DataImageUrlFormatString="./picture/{0}">
                                        </asp:ImageField>
                                        <asp:BoundField DataField="pfname" SortExpression="pfname" />
                                        <asp:BoundField DataField="datetim" SortExpression="datetim" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text="￥"></asp:Label>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="miao" SortExpression="miao" />
                                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" 
                                            Visible="False" />
                                        <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" 
                                            Visible="False" />
                                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" 
                                            Visible="False" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="+" />
                                                &nbsp;
                                                <asp:TextBox ID="TextBox1" runat="server" Width="25px">1</asp:TextBox>
                                                &nbsp;
                                                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="-" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:ButtonField Text="购买" />
                                    </Fields>
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                </asp:DetailsView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                    ProviderName="System.Data.SqlClient" 
                                    SelectCommand="SELECT * FROM [pfruit] WHERE ([pfname] = @pfname)">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="pfname" QueryStringField="pfname" 
                                            Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                                <br />
                                <br />
                                评论<br />
                                <br />
                                <br />
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    DataSourceID="SqlDataSource2" Width="100%">
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" 
                                            Visible="False" />
                                        <asp:BoundField DataField="用户名" HeaderText="用户名" SortExpression="用户名" />
                                        <asp:BoundField DataField="pfname" HeaderText="购买活动门票" 
                                            SortExpression="pfname" />
                                        <asp:BoundField DataField="datetim" HeaderText="发表时间" 
                                            SortExpression="datetim" />
                                        <asp:BoundField DataField="word" HeaderText="评论" SortExpression="word" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                    ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [talk]">
                                </asp:SqlDataSource>
                                <br />
                            </ContentTemplate>
                        </asp:UpdatePanel>
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
                        <p>
                        </p>
                        <p>
                        </p>
                        
                        
                        
                        
                        
                    
</asp:Content>


<asp:Content ID="Content4" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">

                        <asp:LinkButton ID="LinkButton8" runat="server" 
        PostBackUrl="~/ghpickfruit.aspx">水果采摘</asp:LinkButton>
    &gt;采摘门票详情
</asp:Content>



