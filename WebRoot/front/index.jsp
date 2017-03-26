<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.demo.common.model.*,com.jfinal.plugin.activerecord.Page;" %>

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
  <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
  <link rel="stylesheet" href="style/swiper-3.3.1.min.css">
  <link rel="stylesheet" href="style/common.css">
  <link rel="stylesheet" href="style/jquery.mmenu.all.css">
  <link rel="stylesheet" href="style/index.css">
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?89ad579c14f1c653fe02e3ef5a0abbd7";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>

</head>
<body>
	<nav id="menu">
       <ul>
         <li><a href="/">首页</a></li>
         <li><a href="news/">查看资讯</a></li>
         <li><a href="case/">成功案例</a></li>
         <li><a href="tel:15129014318">拨打电话</a></li>
       </ul>
  </nav>	
  <div class="top">
  	<a href="#menu" class="s1"><img src="images/fen.png" alt=""></a>
    <div class="w1200">
      <h1><a href="/" title="创翔网站建设" alt="创翔网站建设"><img src="images/logo.png" alt=""></a></h1>
      <div class="tel">咨询热线：<img src="images/phone.png" alt=""><span>15129014318</span></div>
      <div class="nav">
        <a href="javascript:void(0)" class="cur nav1">首页</a>
        <a href="javascript:void(0)" class="nav2">案例</a>
        <a href="javascript:void(0)" class="nav3">服务项目</a>
        <a href="javascript:void(0)" class="nav4">团队介绍</a>
        <a href="javascript:void(0)" class="nav5">联系我们</a>
        <a href="javascript:void(0)" class="nav6">合作伙伴</a>
      </div>
     
    </div>
  </div>
<div class="banner">
  <a href="https://xxhzjc.taobao.com/" target="_black"></a>
</div>
<div class="we-do">
<div class="w1200">
  <h2>我们能做什么？</h2>
  <div class="list">
    <ul>
      <li>
      <img src="images/yewu1.png" alt="">
      <h3>手机网站，app开发</h3>
      </li>
      <li>
      <img src="images/yewu2.png" alt="">
      <h3>个人网站，企业网站建设</h3>
      </li>
       <li class="fore3">
      <img src="images/yewu3.png" alt="">
      <h3>OA系统开发，java开发</h3>
      </li>
    </ul>
  </div>
  <!-- <a href="" class="zixun">立即咨询</a> -->
  </div>
</div>
<div class="anli">
<div class="w1200">
  <h2>部分案例</h2>
  <div class="list">
    <ul>
	    <%
	    Page<Case> cases = (Page<Case>)request.getAttribute("cases");
	  	for(Case c : cases.getList()) {
	  		%>
	  		<li>
		      <a href="case/detail?id=<%=c.getId() %>" target="_blank">
		      <div class="pic"><img src="<%=c.getListPic1Path() %>" alt="<%=c.getTitle() %>"></div>
		      <p><%=c.getTitle() %></p>
		      </a>
		     </li>
	  		<%
	  	}
	   %>
    </ul>
  </div>
  <!-- 此处链接固定地址为case -->
  <a href="case/" class="zixun">更多案例</a>
  </div>
</div>
<!-- 关于我们 -->
<div class="aboutus">
  <div class="w1200 h637">
    <h2>我们的团队</h2>
    <div class="list  peo-list">
      <ul>
        <li style="display:block">
          <h3><span>寇亚鹏</span>，男，28岁。QQ：454378974 创翔网络创始人！Web前端开发工程师</h3>
          <p><i><img src="images/ico-time.png" alt=""></i>2015-2016 任职陕西电信 担任UI组长 负责各部门和UI对接事项，保证工作进度。</p>
          <p><i><img src="images/ico-time.png" alt=""></i>2012-2015 任职陕西移动 担任UI组长</p>
          <p><i><img src="images/ico-time.png" alt=""></i>2009-2012 毕业于西北大学</p>
        </li>
        <li>
          <h3><span>王武</span>，创翔网络合伙人！高级java开发工程师，项目经理，9年工作经验！</h3>
          <p><i><img src="images/ico-time.png" alt=""></i>2015-2016 担任华为XX外包公司架构师</p>
          <p><i><img src="images/ico-time.png" alt=""></i>2009-2015 任职陕西移动 项目经理！带领开发团队40多人</p>
          <p><i><img src="images/ico-time.png" alt=""></i>2007-2009 任职江苏移动 负责短厅，网厅等业务</p>
        </li>
        <li>
          <h3><span>杨甲</span>，创翔网络合伙人！高级产品经理，项目经理，工作9年，丰富的投标经验</h3>
          <p><i><img src="images/ico-time.png" alt=""></i>2014-2016 任职xx东网 担任项目经理</p>
          <p><i><img src="images/ico-time.png" alt=""></i>2008-2014 任职陕西移动 产品经理</p>
          <p><i><img src="images/ico-time.png" alt=""></i>2007-2008 任职xx</p>
        </li>
        <li>
          <h3><span>李文强</span>，创翔网络合伙人！电子渠道运营团队项目经理 8年工作经验！</h3>
          <p><i><img src="images/ico-time.png" alt=""></i>2015-2016 xx公司 负责大数据业务，奔波于北京，西安。</p>
          <p><i><img src="images/ico-time.png" alt=""></i>2011-2015 任职陕西移动 担任运营团队交费业务项目经理，负责网厅，天猫，短厅等等各渠道运营</p>
          <p><i><img src="images/ico-time.png" alt=""></i>2007-2011 华商报运营专员</p>
        </li>
      </ul>
    </div>
    <div class="hd pea">
      <ul>
        <li class="fore1 on"><img src="images/tou1.jpg" alt=""> </li>
        <li class="fore2"><img src="images/tou2.jpg" alt=""></li>
        <li class="fore3"><img src="images/tou3.jpg" alt=""></li>
        <li class="fore4"><img src="images/tou4.jpg" alt=""></li>
      </ul>
    </div>
  </div>
</div>
<!-- 关于我们 -->
<div class="cooperation">
<div class="w1200">
  <h2>部分合作伙伴</h2>
  <div class="list">
    <ul>
      <li>
        <a href="http://cxwl029.com/">
      <div class="pic"><img src="images/hezuo6.jpg" alt=""></div>
      <p>西安网站建设</p>
      </a>
      </li>
       <li>
      <div class="pic"><img src="images/hezuo1.jpg" alt=""></div>
      <p>江苏/陕西移动</p>
      </li>
      <li>
      <div class="pic"><img src="images/hezuo2.jpg" alt=""></div>
      <p>陕西电信</p>
      </li>
       <li>
      <div class="pic"><img src="images/hezuo2.jpg" alt=""></div>
      <p>西安电信</p>
      </li>
      <li>
      <div class="pic"><img src="images/hezuo2.jpg" alt=""></div>
      <p>内蒙古电信</p>
      </li>
      <li>
      <div class="pic"><img src="images/hezuo3.jpg" alt=""></div>
      <p>内蒙古联通</p>
      </li> 
      <li>
        <a href="http://cxwl029.com/">
      <div class="pic"><img src="images/hezuo11.jpg" alt=""></div>
      <p>虚位以待</p>
      </a>
      </li>
       <li>
      <div class="pic"><img src="images/hezuo11.jpg" alt=""></div>
      <p>虚位以待</p>
      </li>
      <li>
      <div class="pic"><img src="images/hezuo11.jpg" alt=""></div>
      <p>虚位以待</p>
      </li>
      <li>
      <div class="pic"><img src="images/hezuo11.jpg" alt=""></div>
      <p>虚位以待</p>
      </li>
       <li>
      <div class="pic"><img src="images/hezuo11.jpg" alt=""></div>
      <p>虚位以待</p>
      </li>
      <li>
      <div class="pic"><img src="images/hezuo11.jpg" alt=""></div>
      <p>虚位以待</p>
      </li> 
    </ul>
  </div>
  </div>
</div>
<div class="news">
<div class="w1200">
  <h2>动态资讯</h2>
  <h3>创翔网络不是一家公司，而是由4,5个主要成员组成的个人专业团队。请记住我们不是公司！！！<br/>
  专业、专注、诚信、共赢、创新、成长
  </h3>
  <div class="list">
    <ul>
      <li>
      <a href="https://xxhzjc.taobao.com/" target="_black"><img src="images/new1.jpg" alt=""></a>
      </li>
      <li>
      <a href="https://xxhzjc.taobao.com/" target="_black"><img src="images/new2.jpg" alt=""></a>
      </li>
      
    </ul>
  </div>
  <div class="list list1">
    <ul>
    
     	<%
     	Page<News> newses = (Page<News>)request.getAttribute("news");
       	for(News news : newses.getList()) {
       		%>
<!--        			 <a href="news-details1.html" target="_blank">网站建设流程是什么？3分钟全学会，带走不用谢！<i><img src="images/ico-hot.gif" alt=""></i></a> -->
       		<li>
		      		<a href="news/detail?id=<%=news.getId() %>" target="_blank"><%=news.getListTitle() %><i><img src="images/ico-hot.gif" alt=""></i></a>
		     </li>
       		
       		<%
       	}
       	%>
     
    </ul>
  </div>
  <a href="news/" class="zixun" target="_blank">更多资讯</a>
  </div>
</div>
<div class="contact-us">
<div class="w1200">
  <h2>联系我们</h2>
  <div class="list">
    <ul>
      <li>
      <img src="images/us1.png" alt="">
      <p>QQ：454378974<br/>
电话：15129014318<br/>
（我们都属于上班一族，请在下班后打电话）</p>
      </li>
      <li>
      <img src="images/us2.png" alt="">
       <p>商务合作：454378974@qq.com 
<br/>
技术人员入驻：454378974@qq.com <br/>
（牛逼设计，前端，java开发欢迎骚扰）</p>
      </li>
       <li class="fore3">
     <div class="ma">
       <img src="images/ma.png" alt="">
       <p>扫码加关注<br/>优惠不错过</p>
     </div>
      </li>
    </ul>
  </div>
  </div>
</div>
<div class="link">
  <div class="w1200">
  <h2>友情链接</h2>
  <p><a href="http://cxwl029.com/" target="_blank">西安网站建设</a><a href="http://cxwl029.com/" target="_blank">西安网站制作</a><a href="http://cxwl029.com/" target="_blank">西安网站设计</a><a href="http://www.wangzhanjianshe.net/index.html" target="_blank">西安网站建设公司</a><a href="http://weixin.crm-cms.com" target="_blank">苏州微信开发</a><a href="###" target="_blank">友情链接互换 QQ：454378974</a></p>
  </div>
</div>
<div class="footer">
<div class="w1200">
  Copyright © 2016-2019 创翔网络 All Rights Reserved. 陕ICP备13002147号-1
  <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_5060676'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/stat.php%3Fid%3D5060676%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
  </div>
</div>
<div class="foot-tel">
  <ul>
    <li><a href="index.html"><img src="images/ico-s1.png" alt="">首页</a></li>
    <li><a href="news.html"><img src="images/ico-s4.png" alt="">查看资讯</a></li>
    <li><a href="case.html"><img src="images/ico-s3.png" alt="">查看案例</a></li>
    <li><a href="tel:15129014318"><img src="images/ico-s2.png" alt="">拨打电话</a></li>
  </ul>
</div>
  <script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
  <script type="text/javascript" src="js/responsiveslides.min.js"></script>
  <script type="text/javascript" src="js/swiper-3.3.1.min.js"></script>
  <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
  <script type="text/javascript" src="js/jquery-common.js"></script>
  <script type="text/javascript" src="js/jquery.mmenu.min.all.js"></script>
  <script type="text/javascript">
        $(function(){
  
          // 关于我们切换
          // var imgLen=$(".pea ul li").length;
          // var i=0;

          // function changeTo(){
          //   $(".pea ul li").eq(i).addClass('cur').siblings().removeClass('cur');
          //   var goLeft = i * 1200;
          //   $(".peo-list ul").stop().animate({left:"-"+goLeft+"px"}, 1000);
          // }
        
          //     var autoChange = setInterval(function(){ 
          //                     if(i < imgLen-1){ 
          //                       i ++; 
          //                     }else{ 
          //                       i = 0;
          //                     }
          //                     changeTo(); 
          //                   },3000);
          // $(".pea ul li").click(function(){
          //   clearInterval(autoChange);
          //   var curIndex=$(this).index();
          //   i=curIndex;
          //   changeTo();
          // });

          jQuery(".h637").slide({mainCell:".peo-list ul",effect:"left",autoPlay:true});
          // 导航
          function scrollTo(ele,speed){
                if(!speed) speed = 300;

                if(!ele){
                    $("html,body").animate({scrollTop:0},speed);
                }else{
                    if(ele.length>0) $("html,body").animate({scrollTop:$(ele).offset().top-"60"},speed);
                }
                return false;

            }
            $(".nav1").click(function(){
              scrollTo();
              $(this).addClass('cur').siblings('a').removeClass('cur');
            })
            $(".nav2").click(function(){
              scrollTo('.anli',300);
              $(this).addClass('cur').siblings('a').removeClass('cur');
            })
            $(".nav3").click(function(){
              scrollTo('.we-do',300);
              $(this).addClass('cur').siblings('a').removeClass('cur');
            })
            $(".nav4").click(function(){
              scrollTo('.aboutus',300);
              $(this).addClass('cur').siblings('a').removeClass('cur');
            })
            $(".nav5").click(function(){
              scrollTo('.contact-us',300);
              $(this).addClass('cur').siblings('a').removeClass('cur');
            })
            $(".nav6").click(function(){
              scrollTo('.cooperation',300);
              $(this).addClass('cur').siblings('a').removeClass('cur');
            })

            // 导航
          $(window).scroll(function(){
          if($(window).scrollTop()>614)
          {
            $(".top").addClass('cur');
            
          }
          else
          {
           $(".top").removeClass('cur');
          } 
        });
 
         })   
    </script>
    <script type="text/javascript">
        $(function(){
          $("nav#menu").mmenu();
        })
    </script>
</body>
</html>