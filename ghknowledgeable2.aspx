<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ghknowledgeable2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="水果知识科普小课堂"></asp:Label>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">

                        <p>
                            <asp:Button ID="Button1" runat="server" PostBackUrl="~/ghknowledgeable.aspx" 
                                Text="返回水果列表" />
                        </p>
                        <p>
                            &nbsp;</p>
    <p style="font-family: 微软雅黑; font-size: x-large; font-weight: bold"> 水果详情</p>
                        <p>
                            &nbsp;</p>
                        <p>
                            &nbsp;</p>
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                            DataSourceID="SqlDataSource1" Height="50px" Width="100%" BackColor="White" 
                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                            ForeColor="Black" GridLines="Horizontal">
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <Fields>
                                <asp:ImageField DataImageUrlField="photo" 
                                    DataImageUrlFormatString="./picture/{0}" HeaderText="照片">
                                </asp:ImageField>
                                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" 
                                    Visible="False" />
                                <asp:BoundField DataField="fruitname" HeaderText="水果名" 
                                    SortExpression="fruitname" />
                                <asp:BoundField DataField="photo" HeaderText="照片" SortExpression="photo" 
                                    Visible="False" />
                                <asp:BoundField DataField="种类" HeaderText="种类" SortExpression="种类" />
                                <asp:BoundField DataField="生长习性" HeaderText="生长习性" SortExpression="生长习性" />
                                <asp:BoundField DataField="营养价值" HeaderText="营养价值" SortExpression="营养价值" />
                                <asp:BoundField DataField="栽培现状" HeaderText="栽培现状" SortExpression="栽培现状" />
                            </Fields>
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                            ProviderName="System.Data.SqlClient" 
                            SelectCommand="SELECT * FROM [fruitkn] WHERE ([fruitname] = @fruitname)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="fruitname" QueryStringField="fruitname" 
                                    Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
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
                            &nbsp;</p>
    <p>
                            &nbsp;</p>
                        <p>
                        </p>
                    
</asp:Content>


<asp:Content ID="Content4" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">

                        <p>
                            <asp:LinkButton ID="LinkButton8" runat="server" 
                                PostBackUrl="~/ghknowledgeable.aspx">水果知识科普小课堂</asp:LinkButton>
                            &gt;水果知识详情</p>

</asp:Content>



