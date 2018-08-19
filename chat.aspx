<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chat.aspx.cs" Inherits="chat" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     
     
     <link href="css/global.css" rel="stylesheet">
     
     <link href="css/styles.css" rel="stylesheet">
     </head>
<body class="chat-bg">
<header class="header-title">咨询窗口

<button class="send-btnback" style="width:60px;height:47px; text-align:center;" onclick="javascript:history.go(-1);">返回</button>
</header>
<section class="chat-box">
    <span class="chat-trip">此刻对方忙碌，请留言</span>
    <div class="bubbleDiv"><div class="bubbleItem"><div class="doctor-head">
    <img src="images/head_portrait.png" alt="doctor"></div>
   
    
    <div class="bubbleItem"><div class="doctor-head"><img src="images/head_portrait.png" alt="doctor"></div>
    <span class="bubble leftBubble">你好<span class="topLevel"></span></span></div>
    <div class="bubbleItem"><div class="doctor-head"><img src="images/head_portrait.png" alt="doctor"></div>
    <span class="bubble leftBubble">我是客服佩琪<span class="topLevel"></span></span></div>
    <div class="bubbleItem"><div class="doctor-head"><img src="images/head_portrait.png" alt="doctor"></div>
   
   
   </section>
<footer class="chat-edit clearfix">

    <p class="chat-info" placeholder="想咨询他什么内容..." contenteditable="true"></p>
    <span class="uploadImg fl"><input type="file" name="uploadfile" class="uploadfile"></span>
    <button class="send-btn fr">发送</button>
</footer>

<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/chat.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        /*
        左侧 接收别人信息 调用，三个参数：leftBubble，头像路径，内容
        chat(element,imgSrc,doctextContent)
        */
        chat("leftBubble", "images/head_portrait.png", "请问有什么需要帮助的吗？");
      
        $(".send-btn").click(function() {
            //右侧 自己发 调用，只需填一个参数"rightBubble"
            chat("rightBubble");

            //清空输入框
            $('.chat-info').html('');

        })

      
        
    })
</script>

</body>
</html>
