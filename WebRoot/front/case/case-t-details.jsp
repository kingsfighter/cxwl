<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.demo.common.model.*;" %>
<%
	Case c = (Case)request.getAttribute("case");
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
  <link rel="stylesheet" href="../style/jquery.mmenu.all.css">
  <link rel="stylesheet" href="../style/index.css">
  <link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon">
</head>
<body class="pc">
<nav id="menu">
       <ul>
         <li><a href="../">首页</a></li>
         <li><a href="../news/">查看资讯</a></li>
         <li><a href="../case/">成功案例</a></li>
         <li><a href="tel:15129014318">拨打电话</a></li>
       </ul>
  </nav>
 <div class="logo">
  <a href="#menu" class="s1"><img src="../images/fen.png" alt=""></a>
 <h1><a href="../" title="创翔网站建设" alt="创翔网站建设"><img src="../images/logo.png" alt=""></a></h1></div>
 	<div class="fanhui">
      <a href="../"><i><img src="../images/ico-fan.png" alt=""></i>返回首页</a>
      <a href="../news/">新闻资讯</a>
      <a href="../case/">精彩案例</a>
 	</div>
<!--   <h2 class="title-keywords"><%=c.getTitle() %></h2> -->
  <div class="title-keywords"><%=c.getTitle() %></div>
  <div id="pics" style="display:none;">
  <%=c.getContent() %>
  </div>
  <!-- 正文展示区 -->
  <div class="ws-contain">
  <div class="ws-main">
  <div class="ws">
  	<!-- PC端图片展示区 -->
    <ul id="pcPicArea">
    </ul>
  </div>
   <a href="javascript:void(0)" class="btn-l prev"><img src="../images/btn-l.png" alt=""></a>
    <a href="javascript:void(0)" class="btn-r next"><img src="../images/btn-r.png" alt=""></a>
    <div class="page-num"><span class="fore1 pageState"></span></div>
  </div>
  </div>
  <div class="foot-tel">
  <ul>
    <li><a href="/front/"><img src="../images/ico-s1.png" alt="">首页</a></li>
    <li><a href="/front/news"><img src="../images/ico-s4.png" alt="">查看资讯</a></li>
    <li><a href="/front/case/"><img src="../images/ico-s3.png" alt="">查看案例</a></li>
    <li><a href="tel:15129014318"><img src="images/ico-s2.png" alt="">拨打电话</a></li>
  </ul>
</div>
<!-- 上翻 begin -->
	<!-- Mobile端图片展示区 -->
  <div class="swiper-container">
    <div class="swiper-wrapper" id="mobilePicArea">
    </div>
  </div>
  <!-- 上翻 end -->
  <div class='jiantou'><img src='http://res.70c.com/scene-view/img/btn01_arrow.png'></div>
  <script type="text/javascript" src="../js/jquery-1.10.1.min.js"></script>
  <script type="text/javascript" src="../js/swiper-3.3.1.min.js"></script>
  <script type="text/javascript" src="../js/jquery.SuperSlide.2.1.1.js"></script>
  <script type="text/javascript" src="../js/countUp.js"></script>
  <script type="text/javascript" src="../js/jquery-common.js"></script>
  <script type="text/javascript" src="../js/jquery.mmenu.min.all.js"></script>
  <script type="text/javascript">
  
  		var pics = $("#pics img");
  		function initPCPics(){
  			if(null == pics || pics.length <=0) {
  				return;
  			}
  			var pcPicArea = $("#pcPicArea");
  			var html = "";
  			for(var i=0;i<pics.length;i++) {
  				var src = $(pics[i]).attr("src");
  				html += "<li><img src='"+ src +"' alt=''></li>";
  			}
      		pcPicArea.html(html);
  		}
  		function initMobilePics(){
			if(null == pics || pics.length <=0) {
  				return;
  			}
  			var picArea = $("#mobilePicArea");
  			var html = "";
  			for(var i=0;i<pics.length;i++) {
  				var src = $(pics[i]).attr("src");
  				html += getMobilePicStr(src);
  			}
      		picArea.html(html);
  		}
  		
  		function getMobilePicStr(src){
  			var str = "<div class='swiper-slide'>";
  			str += " <img src='"+src+"' alt=''/>";
  			//str += "<div class='jiantou'><img src='http://res.70c.com/scene-view/img/btn01_arrow.png'></div>";
  			str += "</div>";
  			return str;
  		}
  		
        $(function(){
        	//初始化图片
        	initPCPics();
        	initMobilePics();
        	
            $(".ws-contain").hover(function() {
              $(".btn-l,.btn-r").show();
            }, function() {
              $(".btn-l,.btn-r").hide();
            });

            jQuery(".ws-main").slide({mainCell:".ws ul",autoPage:true,effect:"left",vis:3,trigger:"click",scroll:3});
             var swiper = new Swiper('.swiper-container', {
                    pagination: '.swiper-pagination',
                    paginationClickable: true,
                    direction: 'vertical'
            });
        });
        
    </script>
    <script type="text/javascript">
        $(function(){
          $("nav#menu").mmenu();
        })
    </script>
</body>
</html>