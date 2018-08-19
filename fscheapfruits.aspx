<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="fscheapfruits.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: x-large;
            font-family: 微软雅黑;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:Label ID="Label1" runat="server" Text="折扣水果" Visible="False"></asp:Label>
    <br />
    <asp:Image ID="Image4" runat="server" ImageUrl="~/picture/bb111_副本.jpg" 
        Width="100%" />
    <br />
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">

                        <p>
                            &nbsp;</p>
    <p class="style2">
                            &nbsp;&nbsp;
                            折扣水果列表</p>
                        <p class="style2">
                            &nbsp;</p>
                        <p class="style2">
                            <asp:Image ID="Image3" runat="server" Height="8px" 
                                ImageUrl="~/picture/line.jpg" Width="1300px" />
                        </p>
    <p>
                            &nbsp;</p>
    <p>
                            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </p>
                        <p>
                        </p>
                    
</asp:Content>


