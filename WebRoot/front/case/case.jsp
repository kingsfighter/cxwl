
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.demo.common.model.*,com.jfinal.plugin.activerecord.Page;" %>
<%
	int pageShowSize = 5;
	Page<Case> cases = (Page<Case>)request.getAttribute("cases");
	int totalCount = cases.getTotalRow();
	int currentPage = cases.getPageNumber();
	int totalPage = cases.getTotalPage();
	if(currentPage > totalPage) {
		currentPage = totalPage;
	}
	
	Integer caseType = (Integer)request.getAttribute("caseType");
	if(null == caseType){
		caseType = -1;
	}
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
  <link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon">
</head>
<body>
  <div class="logo"><h1><a href="../" title="创翔网站建设" alt="创翔网站建设"><img src="../images/logo.png" alt=""></a></h1></div>
  <div class="fanhui">
      <a href="../"><i><img src="../images/ico-fan.png" alt=""></i>返回首页</a>
      <a href="../news/">新闻资讯</a>
      <a href="../case/">精彩案例</a>
  </div>
<div class="banner banner1">
  <h3><span id="gd-al1"><%=totalCount %></span>余个真实案例，<span id="gd-al2">9</span>年工作经验，<span>品</span>质保证！</h3>
</div>

<div class="anli anli1">
<div class="w1200">
  <h2>精品案例
<div class="lei">

<span <%
	if(-1 == caseType){
		out.write("class='cur'");
	}
 %>><a href="../case/">全部（<%=totalCount %>）</a></span>
<span  <%
	if(1 == caseType){
		out.write("class='cur'");
	}
 %>><a href="list?caseType=1">手机/移动站</a></span>
<span  <%
	if(0 == caseType){
		out.write("class='cur'");
	}
 %>><a href="list?caseType=0">企业网站</a></span>

</div>
  </h2>
  <div class="list list-anli">
  <ul>
  <!-- 案例列表展示 -->
  <%
  	for(Case c : cases.getList()) {
  		%>
  		<li>
	      <a href="detail?id=<%=c.getId() %>" target="_blank">
	      <div class="pic"><img src="<%=c.getListPic1Path() %>" alt="<%=c.getTitle() %>"></div>
	      <p><%=c.getTitle() %></p>
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

<%
	if(currentPage <= 1){
		out.write("<a href='javascript:void(0);'><span><上一页</span></a>");
	}else {
		out.write("<a href='javascript:void(0);'onclick='toPage("+ (currentPage-1) +")'><span><上一页</span></a>");
	}
 %>


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


<!-- <a href="javascript:void(0);"onclick="toPage(<%=currentPage+1 %>)"><span>下一页></span></a> -->

<%
	if(currentPage >= totalPage){
		out.write("<a href='javascript:void(0);'><span>下一页></span></a>");
	}else {
		out.write("<a href='javascript:void(0);'onclick='toPage("+ (currentPage+1) +")'><span>下一页></span></a>");
	}
 %>


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
    <li><a href="tel:15129014318"><img src="images/ico-s2.png" alt="">拨打电话</a></li>
  </ul>
</div>
  <script type="text/javascript" src="../js/jquery-1.10.1.min.js"></script>
  <script type="text/javascript" src="../js/countUp.js"></script>
  <script type="text/javascript" src="../js/jquery-common.js"></script>
	<script type="text/javascript">
		$(function() {
			$(".lei span").tab({
				event : "click",
				currut : "cur",
				obj_content : ".list-anli ul"
			});
			// 数字变动
			var demo = new CountUp("gd-al1", 0, <%=totalCount %>, 0, 2.5, options);
			demo.start();
			var demo1 = new CountUp("gd-al2", 0, 9, 0, 4.5, options);
			demo1.start();
		});
	</script>
	<script>
		var options = {
			useEasing : true,
			useGrouping : true,
			separator : ',',
			decimal : '.',
			prefix : '',
			suffix : ''
		};
	</script>
</body>
</html>