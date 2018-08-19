<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="bbfsnewfruit.aspx.cs" Inherits="Default2" %>

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
    <asp:Image ID="Image2" runat="server" ImageUrl="~/picture/bg11.jpg" 
        Width="100%" />
    <br />
    <br />
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">

                        <p>
                            &nbsp;</p>
    <p class="style5">
                            新上水果列表</p>
    <p>
                            &nbsp;</p>
    <p>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource1" Width="100%">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                        ShowSelectButton="True" />
                                    <asp:ImageField DataImageUrlField="photo" 
                                        DataImageUrlFormatString="./picture/{0}">
                                        <ItemStyle HorizontalAlign="Center" Width="300px" />
                                    </asp:ImageField>
                                    <asp:HyperLinkField DataNavigateUrlFields="fruitname" 
                                        DataNavigateUrlFormatString="~/fsnewfruit2.aspx?fruitname={0}" 
                                        DataTextField="fruitname" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text="￥"></asp:Label>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                            <asp:Label ID="Label2" runat="server" Text="/KG"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="miao" SortExpression="miao" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [fruit]" 
                                DeleteCommand="DELETE FROM [fruit] WHERE [id] = @id" 
                                InsertCommand="INSERT INTO [fruit] ([id], [fruitname], [photo], [datetim], [price], [miao]) VALUES (@id, @fruitname, @photo, @datetim, @price, @miao)" 
                                UpdateCommand="UPDATE [fruit] SET [fruitname] = @fruitname, [photo] = @photo, [datetim] = @datetim, [price] = @price, [miao] = @miao WHERE [id] = @id">
                                <DeleteParameters>
                                    <asp:Parameter Name="id" Type="String" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="fruitname" Type="String" />
                                    <asp:Parameter Name="photo" Type="String" />
                                    <asp:Parameter Name="datetim" Type="String" />
                                    <asp:Parameter Name="price" Type="Int32" />
                                    <asp:Parameter Name="miao" Type="String" />
                                    <asp:Parameter Name="id" Type="String" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="id" Type="String" />
                                    <asp:Parameter Name="fruitname" Type="String" />
                                    <asp:Parameter Name="photo" Type="String" />
                                    <asp:Parameter Name="datetim" Type="String" />
                                    <asp:Parameter Name="price" Type="Int32" />
                                    <asp:Parameter Name="miao" Type="String" />
                                </InsertParameters>
                            </asp:SqlDataSource>
    </p>
                        <p>
                        </p>
                        <p>
                        </p>
                    
</asp:Content>


