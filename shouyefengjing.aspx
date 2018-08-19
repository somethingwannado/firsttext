<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shouyefengjing.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
    {
        color: #000000;
        font-weight: bold;
        font-size: x-large;
        font-family: 微软雅黑;
    }
          
        
       
    </style>
</asp:Content>
     <asp:Content ID="Content3" runat="server"   contentplaceholderid="ContentPlaceHolder3">
         <p>
             &nbsp;</p>
<p>
        <span class="style10" >风景页面</span></p>
<p>
        &nbsp;</p>
<p>
                            
                             <asp:Image ID="Image10" runat="server" Height="5px"  
                                ImageUrl="~/picture/line.jpg" Width="1300px" />
                            
                            
</p>
<p>
        &nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
</p>
              <table width="100%">
                     <tr>
                    <td   height="930px"  >
                     
                   
                    
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Timer ID="Timer1" runat="server" Interval="3000" ontick="Timer1_Tick">
                                </asp:Timer>
                                <asp:Image ID="Image1" runat="server" ImageAlign="Baseline" 
                                     Width="100%" />
                                <br />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                       </td>
                        </tr></table>
<p>
</p>

 
                        <p>
                        </p>

</asp:Content>




<asp:Content ID="Content4" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                        <p>
                            <asp:Label ID="Label1" runat="server" Text="果园风景" Visible="False"></asp:Label>
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/picture/view16_tou.jpg" 
                                Width="100%" />
    </p>
                    
</asp:Content>





