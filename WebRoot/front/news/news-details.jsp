<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.*,com.demo.common.model.*;" %>
<%
	News c = (News)request.getAttribute("news");
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");	
 %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta content="telephone=no" name="format-detection" />
  <title><%=c.getHtmlTitle() %></title>
  <meta name="keywords" content="<%=c.getHtmlKeywords() %>">
  <meta name="description" content="<%=c.getHtmlDesc() %>">
  <link rel="stylesheet" href="../style/swiper-3.3.1.min.css">
  <link rel="stylesheet" href="../style/common.css">
  <link rel="stylesheet" href="../style/index.css">
  <link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon">
 </head>
<body>
  <div class="logo">
    <h1>
      <a href="../" title="创翔网站建设" alt="创翔网站建设">
        <img src="../images/logo.png" alt=""></a>
    </h1>
  </div>
   <div class="fanhui">
      <a href="../"><i><img src="../images/ico-fan.png" alt=""></i>返回首页</a>
      <a href="../news/">新闻资讯</a>
      <a href="../case/">精彩案例</a>
   </div>
  <div class="banner banner1 banner2">
    <!-- <h3>
    <span id="gd-al1">10</span>
    余个真实案例，
    <span id="gd-al2">9</span>
    年工作经验，
    <span>品</span>
    质保证！
  </h3>
  -->
</div>

<div class="anli anli1">
  <div class="w1200">
    <h2><%=c.getTitle() %></h2>
    <div class="leis">
      <span>阅读：<%=c.getReadCount() %> 日期：<%=sdf.format(c.getPublishDate()) %></span>
    </div>
    <div class="news-del">
		<%=c.getContent() %>
    </div>
    <div class="footer">
      <div class="w1200">
        Copyright © 2016-2019 创翔网络 All Rights Reserved. 陕ICP备13002147号-1
        <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_5060676'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/stat.php%3Fid%3D5060676%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
      </div>
    </div>
    <div class="foot-tel">
	  <ul>
	    <li><a href="/front/"><img src="../images/ico-s1.png" alt="">首页</a></li>
	    <li><a href="/front/news"><img src="../images/ico-s4.png" alt="">查看资讯</a></li>
	    <li><a href="/front/case/"><img src="../images/ico-s3.png" alt="">查看案例</a></li>
	    <li><a href="tel:15129014318"><img src="../images/ico-s2.png" alt="">拨打电话</a></li>
	  </ul>
    </div>
    <script type="text/javascript" src="../js/jquery-1.10.1.min.js"></script>
    <script type="text/javascript" src="../js/responsiveslides.min.js"></script>
    <script type="text/javascript" src="../js/swiper-3.3.1.min.js"></script>
    <script type="text/javascript" src="../js/countUp.js"></script>
    <script type="text/javascript" src="../js/jquery-common.js"></script>
    <script type="text/javascript">
        $(function(){
            $(".news-list ul li").hover(function() {
              $(this).addClass('cur');
            }, function() {
             $(this).removeClass('cur');
            });

        });
    </script>
    <script>
  window._bd_share_config = {
    common : {
      bdText : '1111111',
      bdPic : '自定义分享图片'
    },
    share : [{
      "bdSize" : 32
    }]
  }
  with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?cdnversion='+~(-new Date()/36e5)];
</script>
</body>
  </html>