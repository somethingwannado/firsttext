<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="bbmyinfo.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
  .style2
        {
            height: 42px;
           
        }
                     
       
.box{
    width:50%; margin-top:10%; margin:auto; padding:28px;
    height:350px; border:1px #111 solid;
    display:none;            /* Ĭ�϶Ի������� */
}
.box.show{display:block;} 
.box .x{ font-size:18px; text-align:right; display:block;}
.box input{width:80%; font-size:18px; margin-top:18px;}

                
        .style3
    {
        height: 21px;
    }
    

                
        .style5
        {
            font-family: 微软雅黑;
            font-weight: bold;
            font-size: x-large;
        }
    

                
        .style6
        {
            width: 100%;
        }
        .style7
        {
            width: 468px;
        }
        .style8
        {
            width: 414px;
        }
    

                
        </style>
        
     
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Image ID="Image2" runat="server" ImageUrl="~/picture/bbdd1.jpg" 
    Width="100%" />
    <br />
    <br />
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">

    <p>
                            &nbsp;</p>
                            
    <p class="style5">
                            目前总订单</p>
<p>
                            &nbsp;</p>
                        <p>
                            <asp:Image ID="Image3" runat="server" Height="8px" 
                                ImageUrl="~/picture/line.jpg" Width="1300px" />
                        </p>
<p>
                            &nbsp;</p>
<p>
                            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" DataKeyNames="id" 
                                DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                                GridLines="Horizontal">
                                <Columns>
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
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [dingdan]">
                            </asp:SqlDataSource>
</p>
<p>
                            &nbsp;</p>
                        <p>
                            
                             <asp:Image ID="Image5" runat="server" Height="8px"  
                                 ImageUrl="~/picture/line.jpg" Width="1300px" />
                            
                            
                            </p>
                        <p>
                            
                             &nbsp;</p>
                        <p class="style5">
                            
                             分类查看</p>
    <p class="style5">
                            
                             &nbsp;</p>
    <table class="style6">
        <tr>
            <td class="style7">
<p>
                            按类别分：<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                Width="68px">
                                <asp:ListItem>体验</asp:ListItem>
                                <asp:ListItem>购地</asp:ListItem>
                                <asp:ListItem>抢购</asp:ListItem>
                                <asp:ListItem>活动</asp:ListItem>
                            </asp:DropDownList>
&nbsp;&nbsp; </p>
            </td>
            <td class="style8">
<p>
                            按方式分：<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                Width="64px">
                                <asp:ListItem>散客</asp:ListItem>
                                <asp:ListItem>组团</asp:ListItem>
                            </asp:DropDownList>
&nbsp;</p>
            </td>
            <td>
<p>
                            &nbsp;按是否支付分：<asp:DropDownList ID="DropDownList3" runat="server" 
                                AutoPostBack="True" Height="75px" Width="44px">
                                <asp:ListItem Value="true">是</asp:ListItem>
                                <asp:ListItem Value="false">否</asp:ListItem>
                            </asp:DropDownList>
</p>
            </td>
        </tr>
        <tr>
            <td class="style7">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="White" 
                                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                ForeColor="Black" GridLines="Horizontal">
                                <Columns>
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
                            </td>
            <td class="style8">
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="id" DataSourceID="SqlDataSource3" BackColor="White" 
                                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                ForeColor="Black" GridLines="Horizontal">
                                <Columns>
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
                            </td>
            <td>
                            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="id" DataSourceID="SqlDataSource4" BackColor="White" 
                                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                ForeColor="Black" GridLines="Horizontal">
                                <Columns>
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
                            </td>
        </tr>
        <tr>
            <td class="style7">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT * FROM [dingdan] WHERE ([typee] = @typee)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="typee" 
                                        PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
            </td>
            <td class="style8">
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT * FROM [dingdan] WHERE ([way] = @way)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList2" Name="way" 
                                        PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
            </td>
            <td>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT * FROM [dingdan] WHERE ([pay] = @pay)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList3" Name="pay" 
                                        PropertyName="SelectedValue" Type="Boolean" />
                                </SelectParameters>
                            </asp:SqlDataSource>
            </td>
        </tr>
    </table>
                        <p>
                            
                             &nbsp;</p>
                        <p>
                            
                             <asp:Image ID="Image6" runat="server" Height="8px"  
                                 ImageUrl="~/picture/line.jpg" Width="1300px" />
                            
                            
                            </p>
                        <p>
                            &nbsp;</p>
<p class="style5">
                            取消订单操作</p>
                             <p>
                                 &nbsp;</p>
                             <asp:Image ID="Image10" runat="server" Height="8px"  
                                ImageUrl="~/picture/line.jpg" Width="1300px" />
<p>
                            &nbsp;</p>
    <p style="font-weight: bold">
                            会员申请取消订单</p>
    <p>
                            &nbsp;</p>
                        <p>
                            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="id" DataSourceID="SqlDataSource5" BackColor="White" 
                                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                ForeColor="Black" GridLines="Horizontal" Width="100%" 
                                >
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                                        SortExpression="id" />
                                    <asp:BoundField DataField="pickname" HeaderText="pickname" 
                                        SortExpression="pickname" />
                                    <asp:BoundField DataField="用户名" HeaderText="用户名" SortExpression="用户名" />
                                    <asp:BoundField DataField="datetim" HeaderText="datetim" 
                                        SortExpression="datetim" />
                                    <asp:BoundField DataField="typee" HeaderText="typee" SortExpression="typee" 
                                        Visible="False" />
                                    <asp:BoundField DataField="way" HeaderText="way" SortExpression="way" 
                                        Visible="False" />
                                    <asp:BoundField DataField="reason" HeaderText="reason" 
                                        SortExpression="reason" Visible="False" />
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                DeleteCommand="DELETE FROM [deldingdan] WHERE [id] = @id" 
                                InsertCommand="INSERT INTO [deldingdan] ([id], [pickname], [用户名], [datetim], [typee], [way], [reason]) VALUES (@id, @pickname, @用户名, @datetim, @typee, @way, @reason)" 
                                ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [deldingdan]" 
                                UpdateCommand="UPDATE [deldingdan] SET [pickname] = @pickname, [用户名] = @用户名, [datetim] = @datetim, [typee] = @typee, [way] = @way, [reason] = @reason WHERE [id] = @id">
                                <DeleteParameters>
                                    <asp:Parameter Name="id" Type="String" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="pickname" Type="String" />
                                    <asp:Parameter Name="用户名" Type="String" />
                                    <asp:Parameter Name="datetim" Type="String" />
                                    <asp:Parameter Name="typee" Type="String" />
                                    <asp:Parameter Name="way" Type="String" />
                                    <asp:Parameter Name="reason" Type="String" />
                                    <asp:Parameter Name="id" Type="String" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="id" Type="String" />
                                    <asp:Parameter Name="pickname" Type="String" />
                                    <asp:Parameter Name="用户名" Type="String" />
                                    <asp:Parameter Name="datetim" Type="String" />
                                    <asp:Parameter Name="typee" Type="String" />
                                    <asp:Parameter Name="way" Type="String" />
                                    <asp:Parameter Name="reason" Type="String" />
                                </InsertParameters>
                            </asp:SqlDataSource>
</p>
    <p>
                            &nbsp;</p>
    <p>
                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource6" 
                                ForeColor="Black" GridLines="Horizontal" Width="30%">
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <Fields>
                                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                                        SortExpression="id" />
                                    <asp:BoundField DataField="pickname" HeaderText="pickname" 
                                        SortExpression="pickname" />
                                    <asp:BoundField DataField="用户名" HeaderText="用户名" SortExpression="用户名" />
                                    <asp:BoundField DataField="datetim" HeaderText="datetim" 
                                        SortExpression="datetim" />
                                    <asp:BoundField DataField="typee" HeaderText="typee" SortExpression="typee" />
                                    <asp:BoundField DataField="way" HeaderText="way" SortExpression="way" />
                                    <asp:BoundField DataField="reason" HeaderText="reason" 
                                        SortExpression="reason" />
                                </Fields>
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                DeleteCommand="DELETE FROM [deldingdan] WHERE [id] = @id" 
                                InsertCommand="INSERT INTO [deldingdan] ([id], [pickname], [用户名], [datetim], [typee], [way], [reason]) VALUES (@id, @pickname, @用户名, @datetim, @typee, @way, @reason)" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT * FROM [deldingdan] WHERE ([id] = @id)" 
                                UpdateCommand="UPDATE [deldingdan] SET [pickname] = @pickname, [用户名] = @用户名, [datetim] = @datetim, [typee] = @typee, [way] = @way, [reason] = @reason WHERE [id] = @id">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView5" Name="id" 
                                        PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                                <DeleteParameters>
                                    <asp:Parameter Name="id" Type="String" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="pickname" Type="String" />
                                    <asp:Parameter Name="用户名" Type="String" />
                                    <asp:Parameter Name="datetim" Type="String" />
                                    <asp:Parameter Name="typee" Type="String" />
                                    <asp:Parameter Name="way" Type="String" />
                                    <asp:Parameter Name="reason" Type="String" />
                                    <asp:Parameter Name="id" Type="String" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="id" Type="String" />
                                    <asp:Parameter Name="pickname" Type="String" />
                                    <asp:Parameter Name="用户名" Type="String" />
                                    <asp:Parameter Name="datetim" Type="String" />
                                    <asp:Parameter Name="typee" Type="String" />
                                    <asp:Parameter Name="way" Type="String" />
                                    <asp:Parameter Name="reason" Type="String" />
                                </InsertParameters>
                            </asp:SqlDataSource>
</p>
    <p>
                            &nbsp;</p>
    <p>
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="审核通过" />
&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Text="向用户发送指令" />
</p>
    <p>
                            &nbsp;</p>
    <p>
                            &nbsp;</p>
    <p>
                            &nbsp;</p>
    <p>
                            <table style="width:100%; ">
                                <tr>
                                    <td class="style3">
                                        <p style="font-weight: bold">
                                            团购申请订单处理</p>
                                        <p style="font-weight: bold">
                                            &nbsp;</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style48">
                                        点击日历选择查看时间：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; 情况:
                                        <asp:Label ID="Label4" runat="server"></asp:Label>
                                        <br />
                                        <br />
                                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                                            BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" 
                                            Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" 
                                            onselectionchanged="Calendar1_SelectionChanged" TitleFormat="Month" 
                                            Width="400px">
                                            <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                                            <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" 
                                                Font-Size="8pt" ForeColor="#333333" Width="1%" />
                                            <TodayDayStyle BackColor="#CCCC99" />
                                            <OtherMonthDayStyle ForeColor="#999999" />
                                            <DayStyle Width="14%" />
                                            <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" 
                                                ForeColor="#333333" Height="10pt" />
                                            <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" 
                                                ForeColor="White" Height="14pt" />
                                        </asp:Calendar>
                                        <br />
                                        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
                                            DataKeyNames="id" DataSourceID="SqlDataSource7" BackColor="White" 
                                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                            ForeColor="Black" GridLines="Horizontal" Width="50%">
                                            <Columns>
                                                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                                                    SortExpression="id" />
                                                <asp:BoundField DataField="pickname" HeaderText="pickname" 
                                                    SortExpression="pickname" />
                                                <asp:BoundField DataField="用户名" HeaderText="用户名" SortExpression="用户名" />
                                                <asp:BoundField DataField="way" HeaderText="way" SortExpression="way" />
                                                <asp:BoundField DataField="typee" HeaderText="typee" SortExpression="typee" />
                                                <asp:BoundField DataField="datatim" HeaderText="datatim" 
                                                    SortExpression="datatim" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                            ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                            ProviderName="System.Data.SqlClient" 
                                            SelectCommand="SELECT * FROM [团购项目] WHERE ([datatim] = @datatim)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="TextBox1" Name="datatim" PropertyName="Text" 
                                                    Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <br />
                                        需要计算的项目名:&nbsp;
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        <br />
                                        <br />
                                        <asp:Button ID="Button6" runat="server" Text="计算出该项目当天的参加人数" 
                                            onclick="Button6_Click" />
                                        &nbsp; 人数:
                                        <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                                        <br />
                                        <br />
&nbsp;
                                        <asp:Button ID="Button4" runat="server" Text="取消开团" Width="87px" 
                                            Height="32px" onclick="Button4_Click" />
                                    &nbsp;&nbsp;
                                        <asp:Button ID="Button5" runat="server" Text="开团" Height="31px" Width="69px" 
                                            onclick="Button5_Click" />
&nbsp;&nbsp;
                                        <asp:Button ID="Button3" runat="server" Height="28px" Text="通知开团情况" 
                                            Width="108px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style48">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style48">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style48">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style48">
                                        &nbsp;</td>
                                </tr>
                                </table>
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
    <p>
                            &nbsp;</p>
    <p>
                            &nbsp;</p>
    <p>
                            &nbsp;</p>
                        <p>
                        </p>
   
                       
      <script type="text/javascript">
           function msgbox(n) {
                             document.getElementById('inputbox').style.display = n ? 'block' : 'none';     /* �����ť��/�ر� �Ի��� */
                         }
                  /*   <!--    function ms() {
                             if (document.getElementById("txtName1").value == document.getElementById("txtName2").value) {
                                 alert("密码修改通过")
                             }
                         }-->  */
     </script>
     
                    
                    
                    
</asp:Content>


