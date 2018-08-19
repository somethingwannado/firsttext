<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="myzhuce.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
          @import url(StyleSheet.css) screen;
        .style2
        {
            height: 42px;
            text-align: center;
        }
        .style3
        {
            width: 560px;
        }
        .style5
        {
            height: 22px;
        }
        .style6
        {
            width: 560px;
            height: 22px;
        }
        .style7
        {
            text-align: right;
            width: 560px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        
     <div class="daohang" align="center"     >
            
           
        
        <table   width="100%"  cellpadding="2" cellspacing="1" 
             style="font-family: 微软雅黑; font-size: 15px; " bgcolor="#242037" 
            border="0">
            <tr >
                <td Width="200px" style="padding-left:150px">
                    <asp:Image ID="Image1" runat="server" Height="72px" ImageAlign="Middle" 
                        ImageUrl="~/picture/logo.jpg" Width="145px" />
                </td>
                    <div>
                <td   Width="150px" >
                    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" 
                    
                        StaticEnableDefaultPopOutImage="False" 
                         DynamicHorizontalOffset="-15" 
                        DisappearAfter="700" DynamicVerticalOffset="2" Font-Bold="True" 
                         ForeColor="White">
                        
                        
                        <StaticSelectedStyle CssClass="StaticSelectedStyle"  />
                        <StaticMenuItemStyle CssClass="StaticMenuItemStyle"  />
                        <DynamicHoverStyle BackColor="#999999" CssClass="DynamicHoverStyle" 
                            ForeColor="#97614D" Font-Bold="True"  />
                        <DynamicMenuStyle CssClass="DynamicMenuStyle" BackColor="#9999FF" />
                        <DynamicSelectedStyle CssClass="DynamicSelectedStyle" HorizontalPadding="2px" 
                            VerticalPadding="2px"  />
                        <DynamicMenuItemStyle CssClass="DynamicMenuItemStyle" HorizontalPadding="2px" 
                            VerticalPadding="2px"  />
                        <StaticHoverStyle BackColor="Gray" CssClass="StaticHoverStyle" 
                            ForeColor="White" Font-Bold="True"  />
                            
                            
                            
                        <Items>
                            <asp:MenuItem Text="关于果园" Value="关于果园" NavigateUrl="~/shouyejianjie.aspx">
                                <asp:MenuItem NavigateUrl="~/shouyejianjie.aspx" Text="果园简介" Value="果园简介">
                                </asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/shouyefengjing.aspx" Text="果园风景" Value="果园风景">
                                </asp:MenuItem>
                                <asp:MenuItem Text="果园最新消息" Value="果园最新消息" NavigateUrl="~/shouyezuixinxiaoxi.aspx" 
                                    Selected="True"></asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
                
                
                <td  Width="120px">
                    <asp:Menu ID="Menu2" runat="server" Orientation="Horizontal" 
                        StaticEnableDefaultPopOutImage="False" 
                        
                        Font-Bold="True" 
                         ForeColor="White"
                          DynamicHorizontalOffset="-40" 
                        MaximumDynamicDisplayLevels="4">
                      
                        
                          
                        <StaticSelectedStyle CssClass="StaticSelectedStyle" />
                        <StaticMenuItemStyle CssClass="StaticMenuItemStyle" />
                        <DynamicHoverStyle BackColor="#999999" CssClass="DynamicHoverStyle" 
                            ForeColor="#97614D" Font-Bold="True" />
                        <DynamicMenuStyle CssClass="DynamicMenuStyle" BackColor="#9999FF" 
                            />
                        <DynamicSelectedStyle CssClass="DynamicSelectedStyle" HorizontalPadding="2px" 
                            VerticalPadding="2px" />
                        <DynamicMenuItemStyle CssClass="DynamicMenuItemStyle" HorizontalPadding="2px" 
                            VerticalPadding="2px" />
                        <StaticHoverStyle BackColor="Gray" CssClass="StaticHoverStyle" 
                            ForeColor="White" Font-Bold="True" />
                        
                        
                        
                        <Items>
                            <asp:MenuItem Text="果园活动" Value="果园活动" NavigateUrl="~/ghpickfruit.aspx">
                                <asp:MenuItem Text="水果采摘" Value="水果采摘" NavigateUrl="~/ghpickfruit.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="果园观赏" Value="果园观赏" NavigateUrl="~/ghtravel.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="自养树苗" Value="自养树苗" NavigateUrl="~/ghplanttree.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="水果知识科普小课堂" Value="水果知识科普小课堂" 
                                    NavigateUrl="~/ghknowledgeable.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
                <td   Width="120px">
                    <asp:Menu ID="Menu3" runat="server" Orientation="Horizontal" 
                        StaticEnableDefaultPopOutImage="False"
                        Font-Bold="True" 
                         ForeColor="White"
                        
                        >
                      
                          
                        <StaticSelectedStyle CssClass="StaticSelectedStyle" />
                        <StaticMenuItemStyle CssClass="StaticMenuItemStyle" />
                        <DynamicHoverStyle BackColor="#999999" CssClass="DynamicHoverStyle" 
                            ForeColor="#97614D" Font-Bold="True" />
                        <DynamicMenuStyle CssClass="DynamicMenuStyle" BackColor="#9999FF" 
                           />
                        <DynamicSelectedStyle CssClass="DynamicSelectedStyle" HorizontalPadding="2px" 
                            VerticalPadding="2px" />
                        <DynamicMenuItemStyle CssClass="DynamicMenuItemStyle" HorizontalPadding="2px" 
                            VerticalPadding="2px" />
                        <StaticHoverStyle BackColor="Gray" CssClass="StaticHoverStyle" 
                            ForeColor="White" Font-Bold="True" />
                        
                        <Items>
                            <asp:MenuItem Text="水果供应" Value="水果供应" NavigateUrl="~/fsnewfruit.aspx">
                                <asp:MenuItem Text="新上水果" Value="新上水果" NavigateUrl="~/fsnewfruit.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="热销水果" Value="热销水果" NavigateUrl="~/fshotfruits.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="折扣水果" Value="折扣水果" NavigateUrl="~/fscheapfruits.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
                <td Width="120px">
                    <asp:Menu ID="Menu4" runat="server" Orientation="Horizontal" 
                        StaticEnableDefaultPopOutImage="False"
                        Font-Bold="True" 
                         ForeColor="White"
                        >
                        
                        
                          
                        <StaticSelectedStyle CssClass="StaticSelectedStyle" />
                        <StaticMenuItemStyle CssClass="StaticMenuItemStyle" />
                        <DynamicHoverStyle BackColor="#999999" CssClass="DynamicHoverStyle" 
                            ForeColor="#97614D" Font-Bold="True" />
                        <DynamicMenuStyle CssClass="DynamicMenuStyle" BackColor="#9999FF" 
                            />
                        <DynamicSelectedStyle CssClass="DynamicSelectedStyle" HorizontalPadding="2px" 
                            VerticalPadding="2px" />
                        <DynamicMenuItemStyle CssClass="DynamicMenuItemStyle" HorizontalPadding="2px" 
                            VerticalPadding="2px" />
                        <StaticHoverStyle BackColor="Gray" CssClass="StaticHoverStyle" 
                            ForeColor="White" Font-Bold="True" />
                        
                        
                        <Items>
                            <asp:MenuItem Text="周边食宿" Value="周边食宿" NavigateUrl="~/reserveeat.aspx">
                                <asp:MenuItem Text="预定餐馆" Value="预定餐馆" NavigateUrl="~/reserveeat.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="预定宾馆" Value="预定宾馆" NavigateUrl="~/reservelivingroom.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
                <td    Width="120px">
                    <asp:Menu ID="Menu5" runat="server" Orientation="Horizontal" 
                    
                    DynamicHorizontalOffset="-40"
                        StaticEnableDefaultPopOutImage="False"
                        
                        Font-Bold="True" 
                         ForeColor="White"
                        >
                        
                         
                        <StaticSelectedStyle CssClass="StaticSelectedStyle" />
                        <StaticMenuItemStyle CssClass="StaticMenuItemStyle" />
                        <DynamicHoverStyle BackColor="#999999" CssClass="DynamicHoverStyle" 
                            ForeColor="#97614D" Font-Bold="True" />
                        <DynamicMenuStyle CssClass="DynamicMenuStyle" BackColor="#9999FF" 
                            />
                        <DynamicSelectedStyle CssClass="DynamicSelectedStyle" HorizontalPadding="2px" 
                            VerticalPadding="2px" />
                        <DynamicMenuItemStyle CssClass="DynamicMenuItemStyle" HorizontalPadding="2px" 
                            VerticalPadding="2px" />
                        <StaticHoverStyle BackColor="Gray" CssClass="StaticHoverStyle" 
                            ForeColor="White" Font-Bold="True" />
                        
                        <Items>
                            <asp:MenuItem Text="我的" Value="我的" NavigateUrl="~/myinfo.aspx">
                                <asp:MenuItem Text="我的信息" Value="我的信息" NavigateUrl="~/myinfo.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="我的购物车" Value="我的购物车" NavigateUrl="~/myshopping.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="我购买过的东西" Value="我购买过的东西" NavigateUrl="~/myhistory.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td></div>
             <!--   <td>
          <asp:Label ID="Label1" runat="server" Font-Bold="True" 
             Font-Names="微软雅黑" Font-Size="X-Large" ForeColor="#FFFFCC" Width="200px">首页</asp:Label> </td>    -->
                <td  Width="90px"   >
                
     
                    <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" 
                        ForeColor="White" PostBackUrl="~/myloginn.aspx">登录</asp:LinkButton>
                    
                    <br />
                    
                   
                    
                    
                    
                    <asp:LinkButton ID="LinkButton7" runat="server"  Font-Bold="True" 
                         ForeColor="White" PostBackUrl="~/myzhuce.aspx">注册</asp:LinkButton></td>
            </tr>
                     
        </table>
        
         </div>
      
      <br /><br /><br /><br /><br />
    <table  style="width:100%; ">
        <tr>
            <td class="style2" colspan="4">
                <b style="mso-bidi-font-weight:normal">
                <span style="font-size:18.0pt;font-family:微软雅黑;color:#000000; ">用户注册</span>
              </b></td>
        </tr>
        <tr>
            <td  colspan="4" >
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                </td>
            <td class="style3">
                <p class="MsoNormal" style="text-align: right">
                    <b style="mso-bidi-font-weight:normal">
                    <span style="font-size:15.0pt;font-family:微软雅黑;color:#000000">用户名：<span 
                        lang="EN-US"><o:p></o:p></span></span></b></p>
            </td>
            <td class="style61">
            <asp:TextBox ID="uname" runat="server"  style="text-align: left" 
                    BorderColor="#000000" BorderStyle="Groove" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="用户名不能为空" Font-Underline="False" ControlToValidate="uname">必填</asp:RequiredFieldValidator>
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
                    <span style="font-size: 15.0pt; font-family: 微软雅黑; color: #000000; ">密码：<span lang="EN-US"><o:p></o:p></span></span></b></p>
            </td>
            <td class="style54">
                <asp:TextBox ID="upass" runat="server" BorderColor="#000000" 
                    BorderStyle="Groove" TextMode="Password" Width="150px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="密码不能为空" ControlToValidate="upass">必填</asp:RequiredFieldValidator>
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
                </td>
        </tr>
        <tr>
            <td class="style46">
                &nbsp;</td>
            <td class="style7" >
                <b style="mso-bidi-font-weight:normal">
                <span style="font-size: 15.0pt; font-family: 微软雅黑; color: #000000;">性别：</span></b></td>
            <td class="style66">
              
                <asp:DropDownList 
                    ID="DropDownList1" runat="server" Height="29px" Width="47px" 
                    BackColor="White" Font-Bold="True" Font-Names="微软雅黑" Font-Size="12pt" 
                    Font-Strikeout="False" Font-Underline="False" ForeColor="Black" 
                    ToolTip="点击箭头选择性别">
                    <asp:ListItem>女</asp:ListItem>
                    <asp:ListItem>男</asp:ListItem>
                </asp:DropDownList>
                &nbsp;</td>
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
            <td class="style7" >
                <b style="mso-bidi-font-weight:normal">
                <span style="font-size: 15.0pt; font-family: 微软雅黑; color: #000000;">手机：</span></b></td>
            <td class="style47">
                <asp:TextBox ID="phone" runat="server" BorderColor="#000000" 
                    BorderStyle="Groove" Width="150px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="phone" ErrorMessage="RegularExpressionValidator" 
                    ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{8}">号码格式错误(要8位哦)</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="phone" ErrorMessage="RequiredFieldValidator">必填</asp:RequiredFieldValidator>
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
            <td class="style7" >
                <b style="mso-bidi-font-weight:normal">
                <span style="font-size: 15.0pt; font-family: 微软雅黑; color: #000000;">地址：</span></b></td>
            <td class="style47">
                <asp:TextBox ID="ad" runat="server" BorderColor="#000000" 
                    BorderStyle="Groove" Width="150px"></asp:TextBox>
                &nbsp;(送货地址)</td>
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
                <asp:Button ID="Button1" runat="server" Text="注册" Height="25px" 
                    Width="96px" BorderColor="#000000" 
                    BorderStyle="Inset" onclick="Button1_Click" />
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
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/myloginn.aspx">我要赶紧去登录!</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
