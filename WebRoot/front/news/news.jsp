<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.demo.common.model.*,com.jfinal.plugin.activerecord.Page;" %>
<%
	int pageShowSize = 5;
	Page<News> newses = (Page<News>)request.getAttribute("news");
	int totalCount = newses.getTotalRow();
	int currentPage = newses.getPageNumber();
	int totalPage = newses.getTotalPage();
	if(currentPage > totalPage) {
		currentPage = totalPage;
	}
 %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta content="telephone=no" name="format-detection" />
  <title>网站建设|企业网站建设|网站制作|网站设计-创翔网络</title>
  <meta name="keywords" content="西安网站建设,西安建站,PSD转HTML,创翔建站,创翔网络">
  <meta name="description" content="创翔网络,做网站，提销量。没有奢华的语言,仅仅为我们这一件事而奋斗！">
  <link rel="stylesheet" href="../style/swiper-3.3.1.min.css">
  <link rel="stylesheet" href="../style/common.css">
  <link rel="stylesheet" href="../style/index.css">
</head>
<body>
  <div class="logo"><h1><a href="/front/" title="创翔网站建设" alt="创翔网站建设"><img src="../images/logo.png" alt=""></a></h1></div>
  <div class="fanhui">
      <a href="/front/"><i><img src="../images/ico-fan.png" alt=""></i>返回首页</a>
      <a href="/front/news">新闻资讯</a>
      <a href="/front/case/">精彩案例</a>
  </div>
<div class="banner banner1 banner2">
  <!-- <h3><span id="gd-al1">10</span>余个真实案例，<span id="gd-al2">9</span>年工作经验，<span>品</span>质保证！</h3> -->
</div>

<div class="anli anli1">
<div class="w1200">
  <h2>动态资讯
<div class="lei"><span>原创文章问您倾情奉献！</span></div>
  </h2>
  <div class="news-list">
    <ul>
    	<!-- 
      <li>
      <a href="news-details1.html" target="_blank">
       <img src="images/new-pic1.jpg" alt="">
        <div class="m">
          <h3 class="title">网站建设流程是什么？3分钟全学会，带走不用谢！</h3>
          <div class="ct">我想做一个网站，指网站建设。该如何入手,流程是什么？创翔网络手把手教你！</div>
          <div class="more">更多详情>></div>
        </div>
        <div class="time">
           <h4>06</h4>
          <p>2016-10</p>
        </div>
        </a>
      </li>
      <li>
      <a href="news-details.html" target="_blank">
       <img src="images/new-pic1.jpg" alt="">
        <div class="m">
          <h3 class="title">从西安网站建设入手，能否开启从0到让自己的人生赚的盆满钵满？</h3>
          <div class="ct">从一无所有，到赚到自己的第一桶金5000元，第二桶金20000元，再到放弃...时隔几年，NOW,我回来了，从发展网站建设，西安网站制作入手。能否让自己的人生赚的盆满钵满？</div>
          <div class="more">更多详情>></div>
        </div>
        <div class="time">
           <h4>06</h4>
          <p>2016-10</p>
        </div>
        </a>
      </li>
       -->
       <%
       	
       	for(News news : newses.getList()) {
       		Calendar c = Calendar.getInstance();
       		c.setTime(news.getListDate());
       	%>
       		<li>
		      <a href="detail?id=<%=news.getId() %>" target="_blank">
		       <img src="<%=news.getListPic1Path() %>" alt="<%=news.getListTitle() %>">
		        <div class="m">
		          <h3 class="title"><%=news.getListTitle() %></h3>
		          <div class="ct"><%=news.getListContent() %></div>
		          <div class="more">更多详情>></div>
		        </div>
		        <div class="time">
		           <h4><%=c.get(Calendar.DATE) %></h4>
		          <p><%=c.get(Calendar.YEAR) %>-<%=c.get(Calendar.MONTH) %></p>
		        </div>
		        </a>
		     </li>
		<%
       	}
        %>
    </ul>
  </div>
  </div>
</div>
<div class="page">
  <a href="javascript:void(0);"onclick="toPage(<%=currentPage-1 %>)"><span><上一页</span></a>
<% 
	String str = "";
	if(totalPage <= pageShowSize) {
		for(int i=1;i<=totalPage;i++){
			if(currentPage == i) {
				str += "<a href='javascript:void(0);' class='cur' onclick='toPage("+i+")'><span>"+i+"</span></a>";
			}else {
				str += "<a href='javascript:void(0);' onclick='toPage("+i+")'><span>"+i+"</span></a>";
			}
		}
		out.write(str);
	}else{
		if(currentPage <= pageShowSize + 2) {
			for(int i=1;i<=pageShowSize + 2;i++){
				if(currentPage == i) {
					str += "<a href='javascript:void(0);' class='cur' onclick='toPage("+i+")'><span>"+i+"</span></a>";
				}else {
					str += "<a href='javascript:void(0);' onclick='toPage("+i+")'><span>"+i+"</span></a>";
				}
			}
			str += "<a class='more'><span>...</span></a>";
			str += "<a href='javascript:void(0);' onclick='toPage("+totalPage+")'><span>"+totalPage+"</span></a>";
			out.write(str);
		}else{
			str += "<a href='javascript:void(0);' onclick='toPage(1)'><span>1</span></a>";
			str += "<a href='javascript:void(0);' onclick='toPage(2)'><span>2</span></a>";
			str += "<a class='more'><span>...</span></a>";
			
			str += "<a href='javascript:void(0);' onclick='toPage("+(currentPage-2)+")'><span>"+(currentPage-2)+"</span></a>";
			str += "<a href='javascript:void(0);' onclick='toPage("+(currentPage-1)+")'><span>"+(currentPage-1)+"</span></a>";
			str += "<a href='javascript:void(0);' class='cur' onclick='toPage("+(currentPage)+")'><span>"+(currentPage)+"</span></a>";
			if(currentPage+1 <= totalPage){
				str += "<a href='javascript:void(0);' onclick='toPage("+(currentPage+1)+")'><span>"+(currentPage+1)+"</span></a>";
			}
			if(currentPage+2 <= totalPage){
				str += "<a href='javascript:void(0);' onclick='toPage("+(currentPage+2)+")'><span>"+(currentPage+2)+"</span></a>";
			}
			if(currentPage+3 <= totalPage){
				str += "<a class='more'><span>...</span></a>";
				str += "<a href='javascript:void(0);' onclick='toPage("+totalPage+")'><span>"+totalPage+"</span></a>";
			}
			out.write(str);
		}
	}
%>
<a href="javascript:void(0);"onclick="toPage(<%=currentPage+1 %>)"><span>下一页></span></a>
</div>
<script type="text/javascript">
	//分页
	function toPage(pageNumber){
		var addr = document.location.href;
		if(addr.indexOf("?") > -1){
			addr += "&";
		}else {
			addr += "?"
		}
		if(addr.indexOf("pageNumber") > -1){
			var pageNumberIndex = addr.indexOf("pageNumber");
			addr = addr.substring(0, pageNumberIndex + 11);
			addr += pageNumber;
		}else {
			addr += "pageNumber=" + pageNumber;
		}
		document.location.href = addr;
	}
</script>
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
</body>
</html>