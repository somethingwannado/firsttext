<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ghpickfruit.aspx.cs" Inherits="Default2" %>

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
                            &nbsp;</p>
                            
                             <p style="font-family: 微软雅黑; font-size: x-large; font-weight: bold"> 果园采摘门票</p>
                       
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
                                    ForeColor="Black" GridLines="Horizontal">
                                    <Columns>
                                        <asp:ImageField DataImageUrlField="photo" 
                                            DataImageUrlFormatString="./picture/{0}" HeaderText="照片">
                                        </asp:ImageField>
                                        <asp:HyperLinkField DataNavigateUrlFields="pfname" 
                                            DataNavigateUrlFormatString="~/ghpickfruit2.aspx?pfname={0}" 
                                            DataTextField="pfname" HeaderText="名称" />
                                        <asp:TemplateField HeaderText="价格">
                                            <ItemTemplate>
                                                <asp:Label ID="Label5" runat="server" Text="￥"></asp:Label>
                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="datetim" HeaderText="更新时间" 
                                            SortExpression="datetim" />
                                        <asp:BoundField DataField="pfname" HeaderText="pfname" SortExpression="pfname" 
                                            Visible="False" />
                                        <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" 
                                            Visible="False" />
                                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" 
                                            Visible="False" />
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
                                SelectCommand="SELECT * FROM [pfruit] ORDER BY [id] DESC">
                            </asp:SqlDataSource>
                        </p>
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


