<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myinfo.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
  .style2
        {
            height: 42px;
           
        }
             .style3
        {
        width: 198px;
    }
        .style5
        {
            height: 22px;
        }
        .style6
        {
            width: 198px;
            height: 22px;
        }
        
       
.box{
    width:50%; margin-top:10%; margin:auto; padding:28px;
    height:350px; border:1px #111 solid;
    display:none;            /* Ĭ�϶Ի������� */
}
.box.show{display:block;} 
.box .x{ font-size:18px; text-align:right; display:block;}
.box input{width:80%; font-size:18px; margin-top:18px;}

                
        </style>
        
     
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="我的信息" Visible="False"></asp:Label>
    <br />
    <asp:Image ID="Image4" runat="server" ImageUrl="~/picture/bbmy_副本.jpg" 
        Width="100%" />
    <br />
    <br />
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">

                        <p>
                            &nbsp;</p>
    <p>
                            &nbsp;</p>
    <p>
                            <asp:Image ID="Image2" runat="server" />
    </p>
    <p>
                            &nbsp;</p>
    <p>
                            &nbsp;</p>
    <p>
                            <table style="width:100%; ">
                                <tr>
                                    <td class="style2" colspan="4">
                                        <b style="mso-bidi-font-weight: normal; ">
                                        <span style="font-size:18.0pt;font-family:微软雅黑;color:#000000; ">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我的基本信息</span>
                                        </b>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td class="style3">
                                        <p class="MsoNormal" style="text-align: right">
                                            <b style="mso-bidi-font-weight:normal">
                                            <span style="font-size:15.0pt;font-family:微软雅黑;color:#000000">用户名：<span 
                                                lang="EN-US"><o:p></o:p></span></span></b></p>
                                    </td>
                                    <td class="style61">
                                        <asp:TextBox ID="uname" runat="server" BorderColor="#000000" 
                                            BorderStyle="Groove" style="text-align: left" Width="150px" 
                                            ReadOnly="True"></asp:TextBox>
                                    </td>
                                    <td class="style62">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style63">
                                    </td>
                                    <td class="style3">
                                    </td>
                                    <td class="style36">
                                    
         
                                    </td>
                                    <td class="style64">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style59">
                                    </td>
                                    <td class="style3">
                                        <p class="MsoNormal" style="text-align: right">
                                            <b style="mso-bidi-font-weight:normal">
                                            <span style="font-size: 15.0pt; font-family: 微软雅黑; color: #000000; ">密码：<span 
                                                lang="EN-US"><o:p></o:p></span></span></b></p>
                                    </td>
                                    <td class="style54">
                                        <asp:TextBox ID="upass" runat="server" BorderColor="#000000" 
                                            BorderStyle="Groove" TextMode="Password" Width="150px" ReadOnly="True"></asp:TextBox>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="button" onclick="msgbox(1)" value="我想改密码" />
                                    </td>
                                    <td class="style62">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                    </td>
                                    <td class="style6">
                                    </td>
                                    <td class="style5">
                                    
                                     <div id="inputbox" class="box" style="display: none;">
        <a class="x" href="";="" onclick="msgbox(0); return false;">关闭</a>
        <input type="text"  runat="server" id="txtName1"  name ="txtName1"/>
        <input type="text"  runat="server" id="txtName2"  name ="txtName2"/>
        <input type="button" value="提交"  runat="server" id="txtName3" onserverclick="test"  />
     </div> 
                                    
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style46">
                                        &nbsp;</td>
                                    <td class="style3">
                                        <p class="MsoNormal" style="text-align: right">
                                            <b style="mso-bidi-font-weight:normal">
                                            <span style="font-size: 15.0pt; font-family: 微软雅黑; color: #000000; ">性别：<span 
                                                lang="EN-US"><o:p></o:p></span></span></b></p>
                                    </td>
                                    <td class="style66">
                                        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="White" 
                                            Font-Bold="True" Font-Names="微软雅黑" Font-Size="12pt" Font-Strikeout="False" 
                                            Font-Underline="False" ForeColor="Black" Height="29px" ToolTip="点击箭头选择性别" 
                                            Width="47px">
                                            <asp:ListItem>女</asp:ListItem>
                                            <asp:ListItem>男</asp:ListItem>
                                        </asp:DropDownList>
                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td class="style48">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style46">
                                        &nbsp;</td>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td class="style47">
                                        &nbsp;</td>
                                    <td class="style48">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style46">
                                        &nbsp;</td>
                                     <td class="style3">
                                        <p class="MsoNormal" style="text-align: right">
                                            <b style="mso-bidi-font-weight:normal">
                                            <span style="font-size: 15.0pt; font-family: 微软雅黑; color: #000000; ">手机：<span 
                                                lang="EN-US"><o:p></o:p></span></span></b></p>
                                    </td>
                                    <td class="style47">
                                        <asp:TextBox ID="phone" runat="server" BorderColor="#000000" 
                                            BorderStyle="Groove" Width="150px" ReadOnly="True"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         
                                        
                                    </td>
                                    <td class="style48">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style46">
                                        &nbsp;</td>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td class="style47">
                                        &nbsp;</td>
                                    <td class="style48">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style46">
                                        &nbsp;</td>
                                   <td class="style3">
                                        <p class="MsoNormal" style="text-align: right">
                                            <b style="mso-bidi-font-weight:normal">
                                            <span style="font-size: 15.0pt; font-family: 微软雅黑; color: #000000; ">地址：<span 
                                                lang="EN-US"><o:p></o:p></span></span></b></p>
                                    </td>
                                    <td class="style47">
                                        <asp:TextBox ID="ad" runat="server" BorderColor="#000000" BorderStyle="Groove" 
                                            Width="150px"></asp:TextBox>
                                        &nbsp;
                                        &nbsp;(送货地址，请填写最新地址)</td>
                                    <td class="style48">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style46">
                                        &nbsp;</td>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td class="style47">
                                        &nbsp;</td>
                                    <td class="style48">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style46">
                                        &nbsp;</td>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td class="style47">
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="确认" Height="25px" 
                    Width="96px" BorderColor="#000000" 
                    BorderStyle="Inset"  />
                                    </td>
                                    <td class="style48">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style46">
                                        &nbsp;</td>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td class="style47">
                                        &nbsp;</td>
                                    <td class="style48">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style27">
                                        &nbsp;</td>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td class="style30">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                                    &nbsp;&nbsp;
                                        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                                        </td>
                                    <td>
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


