<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myhistory.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style>
 .style2
        {
            font-size: x-large;
            font-weight: bold;
            font-family: 微软雅黑;
        }



</style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Label ID="Label1" runat="server" Text="我购买过的东西" Visible="False"></asp:Label>
     <br />
     <asp:Image ID="Image2" runat="server" ImageUrl="~/picture/bbzi_副本.jpg" 
         Width="100%" />
     <br />
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">

                        <p class="style2">
                            我的历史订单<asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
                        </p>
                        <p class="style2">
                            &nbsp;</p>
    <p>
                            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                                Text="展开历史订单列表" />
                        </p>
                        <p>
                            &nbsp;</p>
    <p>
                            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                              ForeColor="Black" GridLines="Horizontal" 
                                Width="100%" AutoGenerateColumns="False" DataKeyNames="id" 
                                DataSourceID="SqlDataSource1" AllowPaging="True">
                                <Columns>
                                    <asp:CommandField SelectText="我想评论" ShowSelectButton="True" />
                                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                                        SortExpression="id" />
                                    <asp:BoundField DataField="用户名" HeaderText="用户名" SortExpression="用户名" />
                                    <asp:BoundField DataField="dingdanname" HeaderText="dingdanname" 
                                        SortExpression="dingdanname" />
                                    <asp:BoundField DataField="datetim" HeaderText="datetim" 
                                        SortExpression="datetim" />
                                    <asp:BoundField DataField="peo" HeaderText="peo" SortExpression="peo" />
                                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                    <asp:BoundField DataField="way" HeaderText="way" SortExpression="way" />
                                    <asp:BoundField DataField="typee" HeaderText="typee" SortExpression="typee" />
                                    <asp:CheckBoxField DataField="pay" HeaderText="pay" SortExpression="pay" />
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                DeleteCommand="DELETE FROM [dingdan] WHERE [id] = @id" 
                                InsertCommand="INSERT INTO [dingdan] ([id], [用户名], [dingdanname], [datetim], [peo], [price], [way], [typee], [pay]) VALUES (@id, @用户名, @dingdanname, @datetim, @peo, @price, @way, @typee, @pay)" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT * FROM [dingdan] WHERE ([用户名] = @用户名2)" 
                                
                                UpdateCommand="UPDATE [dingdan] SET [用户名] = @用户名, [dingdanname] = @dingdanname, [datetim] = @datetim, [peo] = @peo, [price] = @price, [way] = @way, [typee] = @typee, [pay] = @pay WHERE [id] = @id">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Label5" Name="用户名2" PropertyName="Text" 
                                        Type="String" />
                                </SelectParameters>
                                <DeleteParameters>
                                    <asp:Parameter Name="id" Type="String" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="用户名" Type="String" />
                                    <asp:Parameter Name="dingdanname" Type="String" />
                                    <asp:Parameter Name="datetim" Type="String" />
                                    <asp:Parameter Name="peo" Type="Int32" />
                                    <asp:Parameter Name="price" Type="Int32" />
                                    <asp:Parameter Name="way" Type="String" />
                                    <asp:Parameter Name="typee" Type="String" />
                                    <asp:Parameter Name="pay" Type="Boolean" />
                                    <asp:Parameter Name="id" Type="String" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="id" Type="String" />
                                    <asp:Parameter Name="用户名" Type="String" />
                                    <asp:Parameter Name="dingdanname" Type="String" />
                                    <asp:Parameter Name="datetim" Type="String" />
                                    <asp:Parameter Name="peo" Type="Int32" />
                                    <asp:Parameter Name="price" Type="Int32" />
                                    <asp:Parameter Name="way" Type="String" />
                                    <asp:Parameter Name="typee" Type="String" />
                                    <asp:Parameter Name="pay" Type="Boolean" />
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
                           <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
                           <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="对选中行进行评论" />
                           </p>
    <p>
                            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
                                AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource2" 
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <Fields>
                                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                                        SortExpression="id" />
                                    <asp:BoundField DataField="用户名" HeaderText="用户名" SortExpression="用户名" />
                                    <asp:BoundField DataField="pickname" HeaderText="pickname" 
                                        SortExpression="pickname" />
                                    <asp:BoundField DataField="datetim" HeaderText="datetim" 
                                        SortExpression="datetim" Visible="False" />
                                    <asp:TemplateField HeaderText="评论">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("word") %>' 
                                                TextMode="MultiLine"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="提交评论" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="word" HeaderText="word" SortExpression="word" 
                                        Visible="False" />
                                </Fields>
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                DeleteCommand="DELETE FROM [talkpick] WHERE [id] = @id" 
                                InsertCommand="INSERT INTO [talkpick] ([id], [用户名], [pickname], [datetim], [word]) VALUES (@id, @用户名, @pickname, @datetim, @word)" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT * FROM [talkpick] WHERE ([id] = @id)" 
                                
                                UpdateCommand="UPDATE [talkpick] SET [用户名] = @用户名, [pickname] = @pickname, [datetim] = @datetim, [word] = @word WHERE [id] = @id">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Label6" Name="id" PropertyName="Text" 
                                        Type="String" />
                                </SelectParameters>
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
                            &nbsp;</p>
                        <p>
                            <asp:Label ID="Label7" runat="server" Visible="False"></asp:Label>
    </p>
                        <p>
                            &nbsp;</p>
                        <p>
                            &nbsp;</p>
                        <p>
                            &nbsp;</p>
                        <p>
                            我的开团通知情况:&nbsp;&nbsp;&nbsp;                             <asp:Label ID="Label8" runat="server"></asp:Label>
                            &nbsp;&nbsp;
                            <asp:Button ID="Button6" runat="server" Text="刷新" />
    </p>
                        <p>
                            &nbsp;</p>
    <p>
                            &nbsp;</p>
                        <p>
                        </p>
                    
</asp:Content>


