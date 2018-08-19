<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ghplanttree2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: x-large;
            font-weight: bold;
            font-family: 微软雅黑;
        }
        .style3
        {
            width: 100%;
        }
        .style5
        {
            width: 184px;
        }
        .style6
        {
            width: 203px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="自养树苗" Visible="False"></asp:Label>
    <br />
    <asp:Image ID="Image5" runat="server" ImageUrl="~/picture/btree_副本.jpg" 
        Width="100%" />
    <br />
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">

                        <p>
                            <asp:Button ID="Button3" runat="server" PostBackUrl="~/ghplanttree.aspx" 
                                Text="返回"  />
                        </p>
                        <p>
                            &nbsp;</p>
                        <p class="style2">
                                                        详情页</p>
                        <p>
                            &nbsp;</p>
                        <p>
                            <asp:Image ID="Image3" runat="server" Height="8px" 
                                ImageUrl="~/picture/line.jpg" Width="1300px" />
                        </p>
                        <p>
                            &nbsp;</p>
                        <p>
                            &nbsp;</p>
                        <p>
                                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                    DataSourceID="SqlDataSource1" Height="50px" Width="100%" 
                                DataKeyNames="id" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
                                    BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <Fields>
                                        <asp:ImageField DataImageUrlField="photo" 
                                            DataImageUrlFormatString="./picture/{0}" HeaderText="照片">
                                        </asp:ImageField>
                                        <asp:BoundField DataField="pickname" SortExpression="pickname" 
                                            HeaderText="项目名" />
                                       
                                       
                                        <asp:BoundField DataField="typee" SortExpression="typee" HeaderText="类型" />
                                        <asp:BoundField DataField="price" SortExpression="price" HeaderText="散客价" >
                                        <ItemStyle Font-Strikeout="False" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="afprice" HeaderText="团购价" SortExpression="afprice" />
                                        <asp:BoundField DataField="miao" HeaderText="描述" SortExpression="miao" />
                                    </Fields>
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                </asp:DetailsView>
                                </p>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                    ProviderName="System.Data.SqlClient" 
                                    
                            SelectCommand="SELECT * FROM [pick] WHERE ([pickname] = @pickname)">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="pickname" QueryStringField="pickname" 
                                            Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <p>
                            <asp:Label ID="Label7" runat="server"></asp:Label>
&nbsp;
                            </p>
                        <p>
                            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                        </p>
                      
                           
                                <p>
                                    &nbsp;&nbsp;&nbsp;
                                    &nbsp; 
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </p>
                                <table class="style3" width="100%">
                                    <tr>
                                        <td class="style6">
                                            &nbsp;</td>
                                        <td width="200">
                                    <asp:Label ID="Label9" runat="server" Text="参加类型："></asp:Label>
                                        </td>
                                        <td width="200">
                                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="51px">
                                        <asp:ListItem>散客</asp:ListItem>
                                        <asp:ListItem>组团</asp:ListItem>
                                    </asp:DropDownList>
                                        </td>
                                        <td class="style5">
                                <asp:Label ID="Label5" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style6">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;&nbsp; 单价：</td>
                                        <td>
                                    <asp:Label ID="Label4" runat="server"></asp:Label>
                                        </td>
                                        <td class="style5">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style6">
                                            &nbsp;</td>
                                        <td>
                                            数量：</td>
                                        <td>
                                    <asp:TextBox ID="TextBox4" runat="server" onkeypress="if (event.keyCode<48 || event.keyCode>57) event.returnValue=false;"
                                        Width="38px"></asp:TextBox>
                                        </td>
                                        <td class="style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" 
                                        ForeColor="#000066">一定要选哦</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox4" runat="server" ErrorMessage="只能输入数字" ValidationExpression="\d+"></asp:RegularExpressionValidator>

                                    
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style6">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            <asp:Label ID="Label6" runat="server"></asp:Label>
                                        </td>
                                        <td class="style5">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style6">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style5">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style6">
                                            &nbsp;</td>
                                        <td>
                                    <asp:Label ID="Label8" runat="server" Text="选择时间："></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" 
                                        ForeColor="#000099" SetFocusOnError="True">一定要选哦</asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style6">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                 <asp:Calendar ID="Calendar1" runat="server" 
                                    onselectionchanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="Black" 
                                                DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" 
                                                ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" 
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
                                        </td>
                                        <td class="style5">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style6">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style5">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style6">
                                            &nbsp;</td>
                                        <td>
                            <asp:Button ID="Button4" runat="server" Text="开始预约" onclick="Button4_Click" />
                                        </td>
                                        <td>
                            <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="确认购买" />
                                        </td>
                                        <td class="style5">
                            <asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="马上抢购" />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style6">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style5">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                        </table>
                                <p>
                                    &nbsp;&nbsp;
                                </p>
                                <p>
                                    &nbsp;</p>
                      
                        <p>
                            &nbsp;</p>
                        <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
&nbsp;
                            </p>
                        <p>
                            &nbsp;</p>
                        <p class="style2">
                                评论详情  <p>
                            &nbsp;</p>
                        <p>
                            <asp:Image ID="Image4" runat="server" Height="8px" 
                                ImageUrl="~/picture/line.jpg" Width="1300px" />
                        </p>
                        <p>
                            &nbsp;</p>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    DataSourceID="SqlDataSource2" Width="100%" 
    DataKeyNames="id" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
    BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" 
                                            ReadOnly="True" />
                                        <asp:BoundField DataField="用户名" HeaderText="用户名" SortExpression="用户名" />
                                        <asp:BoundField DataField="pickname" HeaderText="pickname" 
                                            SortExpression="pickname" />
                                        <asp:BoundField DataField="datetim" HeaderText="datetim" 
                                            SortExpression="datetim" />
                                        <asp:BoundField DataField="word" HeaderText="word" 
                                            SortExpression="word" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                </asp:GridView>
    <p>
                            &nbsp;</p>
                        <p>
                            &nbsp;</p>
                        <p>
                            &nbsp;</p>
                        <p>
                            &nbsp;</p>
                        <p>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="Data Source=MS-201603161859;Initial Catalog=ggfruit;Integrated Security=True" 
                                ProviderName="System.Data.SqlClient" 
                                SelectCommand="SELECT * FROM [talkpick]">
                            </asp:SqlDataSource>
                        </p>
                        <p>
                        </p>
                    
</asp:Content>


<asp:Content ID="Content4" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">

                        <asp:LinkButton ID="LinkButton8" runat="server" 
        PostBackUrl="~/ghplanttree.aspx">自养树苗</asp:LinkButton>
    &gt;树苗土壤
</asp:Content>



