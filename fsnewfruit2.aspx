<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="fsnewfruit2.aspx.cs" Inherits="Default2" %>

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
                            <asp:Button ID="Button3" runat="server" PostBackUrl="~/fsnewfruit.aspx" 
                                Text="返回水果列表" />
                        </p>
                        <p>
                            &nbsp;</p>
                             <p style="font-family: 微软雅黑; font-size: x-large; font-weight: bold"> 水果详情</p>
                        
                        <p>
                            &nbsp;</p>
                        <p>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                        </p>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                    DataSourceID="SqlDataSource1" Height="50px" Width="100%" BackColor="White" 
                                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                    ForeColor="Black" GridLines="Horizontal" 
                                   >
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <Fields>
                                        <asp:ImageField DataImageUrlField="photo" 
                                            DataImageUrlFormatString="./picture/{0}">
                                        </asp:ImageField>
                                        <asp:BoundField DataField="fruitname" SortExpression="fruitname" />
                                        <asp:BoundField DataField="datetim" SortExpression="datetim" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                               <asp:Label ID="Label3" runat="server" Text="￥"></asp:Label>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="+" />
                                                &nbsp;
                                                <asp:TextBox ID="TextBox1" runat="server" Width="25px">1</asp:TextBox>
                                                &nbsp;
                                                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="-" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:ButtonField Text="按钮" />
                                        <asp:BoundField DataField="miao" SortExpression="miao" />
                                    </Fields>
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                </asp:DetailsView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                    ProviderName="System.Data.SqlClient" 
                                    SelectCommand="SELECT [fruitname], [photo], [datetim], [price], [miao] FROM [fruit] WHERE ([fruitname] = @fruitname)">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="fruitname" QueryStringField="fruitname" 
                                            Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                                <br />
                                <br />
                                <br />
                            </ContentTemplate>
                        </asp:UpdatePanel>
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


<asp:Content ID="Content4" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">

                        <asp:LinkButton ID="LinkButton8" runat="server" 
        PostBackUrl="~/fsnewfruit.aspx">新上水果列表</asp:LinkButton>
    &gt;水果详情
</asp:Content>



