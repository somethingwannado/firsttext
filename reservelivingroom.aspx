<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="reservelivingroom.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            border: 1px solid #000000;
        }
        .style3
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label1" runat="server" Text="预定宾馆" Visible="False"></asp:Label>
    <br />
    <asp:Image ID="Image11" runat="server" ImageUrl="~/picture/bbaaa_副本.jpg" 
        Width="100%" />
    <br />
    <br />
    
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">

                        <br />
                        <br />
                        <p style="font-family: 微软雅黑; font-size: x-large; font-weight: bold">宾馆详情
                        </p>
<p style="font-family: 微软雅黑; font-size: x-large; font-weight: bold">&nbsp;</p>
<p style="font-family: 微软雅黑; font-size: x-large; font-weight: bold">
                            
                             <asp:Image ID="Image16" runat="server" Height="5px"  
                                ImageUrl="~/picture/line.jpg" Width="1000px" />
                            
                            
                        </p>
                        <b><br />
                        </b>
                        <br />
                            
                             <asp:Image ID="Image10" runat="server" Height="5px"  
                                ImageUrl="~/picture/line.jpg" Width="1000px" />
                            
                            
                        <table class="style2">
                            <tr>
                                <td class="style3">
                                    <asp:Image ID="Image12" runat="server" ImageUrl="~/picture/bed11.jpeg" 
                                        Width="400px" />
                                </td>
                                <td class="style3">
                                    <asp:Image ID="Image13" runat="server" 
                                        ImageUrl="~/picture/bed2.jpeg" Width="400px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    经典大床&nbsp;&nbsp; ￥400/晚<br />
                                    <asp:Button ID="Button1" runat="server" Text="我想预定" onclick="Button1_Click" />
                                </td>
                                <td>
                                    梦幻情调大床&nbsp;&nbsp; ￥420/晚<br />
                                    <asp:Button ID="Button2" runat="server" Text="我想预定" onclick="Button2_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image14" runat="server" ImageUrl="~/picture/bed3.jpeg" 
                                        Width="400px" />
                                </td>
                                <td>
                                    <asp:Image ID="Image15" runat="server" ImageUrl="~/picture/bed4.jpeg" 
                                        Width="400px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    简约单人床&nbsp;&nbsp; ￥150/晚<br />
                                    <asp:Button ID="Button3" runat="server" Text="我想预定" onclick="Button3_Click" />
                                </td>
                                <td>
                                    复古双人床&nbsp;&nbsp; ￥200/晚<br />
                                    <asp:Button ID="Button4" runat="server" Text="我想预定" onclick="Button4_Click" />
                                </td>
                            </tr>
    </table>
                        <p>
                        </p>
                    
</asp:Content>


