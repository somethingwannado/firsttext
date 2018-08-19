<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myloginn.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
      <style type="text/css">
        
          @import url(StyleSheet.css) screen;
       
        }
          .style1
          {
              width: 519px;
              text-align: right;
          }
          .style61
          {
              text-align: left;
          }
          .style54
          {
              text-align: left;
          }
          .style47
          {
              text-align: left;
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
      
      
        <table style="width:100%; text-align:center;" >
        <tr>
            <td  colspan="4">
                <b style="mso-bidi-font-weight:normal">
                <span style="font-size:18.0pt;font-family:微软雅黑;color:#000000; text-align: center;">
                用户登录<span lang="EN-US"></span></span></b></td>
        </tr>
        <tr>
            <td colspan="4">
                </td>
        </tr>
        <tr>
            <td class="style59">
            </td>
            <td class="style1">
                <p class="MsoNormal" style="text-align: right">
                    <b style="mso-bidi-font-weight:normal">
                    <span style="font-size:15.0pt;font-family:微软雅黑;color:#000000">用户名：</span></b></p>
            </td>
            <td class="style61">
                <asp:TextBox ID="uname" runat="server" BorderColor="#000000" 
                    BorderStyle="Groove" style="text-align: left" Width="150px"></asp:TextBox>
            </td>
            <td class="style62">
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/myinfo.aspx">修改我的信息</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style63">
            </td>
            <td class="style1">
            </td>
            <td class="style36">
            </td>
            <td class="style64">
            </td>
        </tr>
        <tr>
            <td class="style59">
            </td>
            <td class="style1">
                <p class="MsoNormal" style="text-align: right">
                    <span style="font-size: 15.0pt; font-family: 微软雅黑; color:#000000; ">
                    <b style="mso-bidi-font-weight:normal">密码：</b></p>
                </span>
            </td>
            <td class="style54">
                <asp:TextBox ID="upass" runat="server" BorderColor="#000000" 
                    BorderStyle="Groove" TextMode="Password" Width="150px"></asp:TextBox>
                &nbsp;</td>
            <td class="style62">
            </td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td class="style30">
                &nbsp
                 <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style46">
                &nbsp;</td>
            <td class="style1">
                <asp:Button ID="Button2" runat="server" BorderColor="#000000" 
                    BorderStyle="Outset" Height="25px" onclick="Button2_Click" Text="登陆" 
                    Width="96px" />
            </td>
            <td class="style47">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BorderColor="#000000" 
                    BorderStyle="Inset" Height="25px" onclick="Button1_Click" Text="注册" 
                    Width="96px" />
            </td>
            <td class="style48">
            </td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style1">
                <asp:Button ID="Button4" runat="server" PostBackUrl="~/shouabout.aspx" 
                    Text="去首页看看" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style30">
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    PostBackUrl="~/myshopping.aspx" Text="别拦我我要去付款" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
      
      
      
    </div>
    </form>
</body>
</html>
