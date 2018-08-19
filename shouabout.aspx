<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="shouabout.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>包丽丽观光果园开展啦</title>
    
    
    <style type="text/css">
         @import url(StyleSheet.css) screen;
        .style9
        {
            height: 9px;
            }
        .style11
        {
            font-family: 微软雅黑;
            font-size: 15pt;
        }
        .style12
        {
            font-family: 微软雅黑;
            font-size: 15pt;
            font-weight: bold;
            color: #262239;
        }
        .style13
        {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #242037;
        }
       
        .style14
        {
            height: 9px;
            color: #192325;
            font-weight: bold;
            font-family: 黑体;
            font-size: 25pt;
            text-align: center;
        }
       
        .style15
        {
            color: #26232A;
            font-weight: bold;
            font-size: 25pt;
            font-family: 黑体;
        }
        .style16
        {
            text-align: center;
        }
       
        </style>
        <link href="css/css.css" rel="stylesheet" media="screen"/>
        <link href="StyleSheet.css" rel="stylesheet" media="screen"/>
        <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
  
</head>
<body  >
    <form id="form1" runat="server"  >
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
                         
                         <td>
                         
                         
                         
                           
                         
                         
                         
                             <asp:LinkButton ID="LinkButton8" runat="server" PostBackUrl="~/myinfo.aspx" 
                                 ForeColor="White"></asp:LinkButton>
                         
                         
                         
                           
                         
                         
                         
                         </td>
            </tr>
                     
        </table>
        
         </div>
        <asp:Image ID="Image3" runat="server" ImageUrl="~/picture/bg4.jpg" 
            Width="100%" />
       <br />
       
        <div    style="width:100%;">
        <table   width="100%" >
            <tr>
                <td class="style9" align="center" colspan="2">
                  <div> 
                      <div class="style16">
                      <br />
                      <br />
                      <span class="style12">BB果园是一家海内外享誉盛名的休闲旅游胜地。</span><br class="style12" />
                      <span class="style12">集观光休闲娱乐多项活动一体，欢迎大家的到来。</span><br class="style11" />
                          <br />
                          <br />
                          <br />
                      <br />
                          <span class="style15">果园风景</span><br />
                          <br />
                      <br />
                      </div>
                      
                     <table width="100%">
                     <tr>
                    <td   height="930px"  >
                      <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                   
                    
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Timer ID="Timer1" runat="server" Interval="3000" ontick="Timer1_Tick">
                                </asp:Timer>
                                <asp:Image ID="Image2" runat="server" ImageAlign="Baseline" Height="700px" />
                                <br />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                       </td>
                        </tr></table>
                    
                    </div>
                    <br />
                    <br />
                    <br />
                    <tr>
                <td class="style14" colspan="2" bgcolor="White" style="text-decoration: blink">
                    果园内容
                 
                    <br />
                    <br />
                <td class="style9" align="center" colspan="2">
                    &nbsp;
                <td class="style9" align="center" colspan="2"></tr>
                    <table class="style13"   >
                        <tr>
                            <td   >
                                <asp:ImageButton ID="ImageButton2" runat="server" 
                                    ImageUrl="~/picture/sj11.jpg" text="11" Width="420px" 
                                    PostBackUrl="~/shouyejianjie.aspx" ToolTip="点击了解关于果园"/>
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/picture/sj22.jpg" 
                                    Width="420px" PostBackUrl="~/ghpickfruit.aspx" ToolTip="点击了解果园活动" />
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton4" runat="server" 
                                    ImageUrl="~/picture/sj33.jpg" Width="420px" 
                                    PostBackUrl="~/fsnewfruit.aspx" ToolTip="点击了解水果供应" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                           
                                <asp:ImageButton ID="ImageButton5" runat="server" 
                                    ImageUrl="~/picture/sj44.jpg" Width="420px" 
                                    PostBackUrl="~/reserveeat.aspx" ToolTip="点击了解周边食宿" />
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton6" runat="server" 
                                    ImageUrl="~/picture/sj55.jpg" Width="420px" PostBackUrl="~/myinfo.aspx" 
                                    ToolTip="点击了解我的信息" />
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton7" runat="server" 
                                    ImageUrl="~/picture/sj66.jpg" Width="420px" ToolTip="点击即可登录或注册" 
                                    PostBackUrl="~/myloginn.aspx" />
                            </td>
                        </tr>
                    </table>
                    <tr>
                <td class="style3" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="padding-left:100px" class="style10" >
                
                                        </td>
                <td    style="padding-top:0px" class="style10"     >
                    </td>
            </tr>
            <tr>
                <td class="style3" colspan="2">
                  
&nbsp;</td>
               <td>
               
             
               
               </td>


            </tr>
        </table>
        </div> 
        
        
        <!-- 脚本 -->
        <div class="livechat-girl animated"> <img class="girl" src="images/en_3.png"/>
  <div class="livechat-hint rd-notice-tooltip rd-notice-type-success rd-notice-position-left single-line hide_hint">
    <div class="rd-notice-content">嘿，我来帮您！</div>
  </div>
  <div class="animated-circles animated">
    <div class="circle c-1"></div>
    <div class="circle c-2"></div>
    <div class="circle c-3"></div>
  </div>
</div>
       
     <script type="text/javascript">
    (function($) {
        setInterval(function() {
            if ($(".animated-circles").hasClass("animated")) {
                $(".animated-circles").removeClass("animated");
            } else {
                $(".animated-circles").addClass('animated');
            }
        }, 3000);
       var wait = setInterval(function() {
            $(".livechat-hint").removeClass("show_hint").addClass("hide_hint");
            clearInterval(wait);
        }, 4500);
        $(".livechat-girl").hover(function() {
            clearInterval(wait);
            $(".livechat-hint").removeClass("hide_hint").addClass("show_hint");
        }, function() {
            $(".livechat-hint").removeClass("show_hint").addClass("hide_hint");
        }).click(function() {
        window.location.href = "chat.aspx?" 
      
        });
    })(jQuery);
</script>

<!-- 脚本完 

  <!--    if (isMobile) {
                window.location.href = 'http://www.baidu.com';
            } else {
                var oWidth = 606,
				oHeight = 630,
				top = ($(window).height() / 2) - (oHeight / 2),
				left = ($(window).width() / 2) - (oWidth / 2);
                window.open('chat.aspx', '', 'width=' + oWidth + ',height=' + oHeight + ',scrollbars=yes,top=' + top + ',left=' + left + ',resizable=yes');
            }   -->


        
        
         <table width=100%; bgcolor="#242037" >
        <tr >   <td  style="margin-left:100px; padding-left:100px" >   <asp:ImageButton ID="ImageButton1" runat="server" Height="127px" 
                        ImageUrl="~/picture/logo.jpg" PostBackUrl="~/shouabout.aspx" Width="272px" />         
                             </td> 
            <td   style="margin-left:100px;padding-left:100px">
            <asp:LinkButton ID="LinkButton1" runat="server" 
                PostBackUrl="~/shouyejianjie.aspx"  ForeColor="White" Font-Bold="True">关于果园</asp:LinkButton> 
            &nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" 
                PostBackUrl="~/ghpickfruit.aspx"  ForeColor="White" Font-Bold="True">果园活动</asp:LinkButton>
            &nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/fsnewfruit.aspx"  ForeColor="White" Font-Bold="True">水果供应</asp:LinkButton>
&nbsp;
            <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/reserveeat.aspx"   ForeColor="White" Font-Bold="True">周边食宿</asp:LinkButton>
&nbsp;
            <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/myinfo.aspx"    ForeColor="White" Font-Bold="True">我的</asp:LinkButton>
        </td> </tr></table>
    </div>
    </form>
</body>
</html>


