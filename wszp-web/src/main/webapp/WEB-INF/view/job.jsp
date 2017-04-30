<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Envor HTML5/CSS3 Template">
    <meta name="author" content="Suono Libero ( @rivathemes.com )">
    <link rel="shortcut icon" href="favicon.ico">

    <title>Envor HTML5/CSS3 Template</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!-- Custom CSS -->
    <link href="css/animate.css" rel="stylesheet" type="text/css">
    <link href="css/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css">
    <link href="css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/colorbox-skins/4/colorbox.css" type="text/css">
        <link href="css/main.css" rel="stylesheet" type="text/css">
    

    <link href="css/header/h1.css" rel="stylesheet" type="text/css">
    <link href="css/responsive.css" rel="stylesheet" type="text/css">
    <link href="css/color1.css" rel="stylesheet" type="text/css" id="envor-site-color">
    <link href="css/rivathemes.css" rel="stylesheet" type="text/css">

    <!-- LayerSlider styles -->
    <link rel="stylesheet" href="css/layerslider/css/layerslider.css" type="text/css">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="js/vendor/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    
    <style type="text/css">
    .active a{
    color: white;
    }
    
    .search_item li {
    float: left;
    white-space: nowrap;
    cursor: pointer;
    margin-right: 25px;
}
.search_item {
height:40px;
line-height:40px;
}

.cash{
    font-size: 16px;
    color: #FF6000;
    text-align: center;
}
    </style>
  </head>

    <body>
  

    <!--[if lt IE 7]>
    <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
    <![endif]-->
   
   	<%@include file="./header.jsp" %>
   
   <div class="envor-content" style="padding-top: 0px;">
      <section class="envor-desktop-breadscrubs">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <div class="envor-desktop-breadscrubs-inner">
                <a href="index.html">首页</a><i class="fa fa-angle-double-right"></i>检索职位
              </div>
            </div>
          </div>
        </div>
      </section>
      
 
 <section class="envor-section">
	        <div class="container">
	        
	        <div class='row'>
			        
			        
			        <div class='col-md-12' >
			        
			        	<div class="panel panel-default">
						  <div class="panel-body">
						    <form class="form-inline">
						    <input type="hidden" value="" name='cash'>
						    <input type="hidden" value="" name='nature'>
						
						    
								  <div class="form-group">
								    <div class="input-group">
								      <input name='name' type="text" style="width: 400px" class="form-control"  placeholder="请输入关键词">
								    </div>
								  </div>
								  <button type="button" onclick="do_query()" class="envor-btn envor-btn-normal envor-btn-primary ">立即检索</button>
								</form>
						  </div>
						</div>

					 </div>
					 
					 
					 <div class='col-md-12' >
			        
			        	<div class="panel panel-default">
						  <div class="panel-body">
						    
						   	 <div class='search_item   ' style="border-bottom: 1px solid #DDD;">
						   		 <div class='col-md-1'>月薪范围</div>
						   		 <div class='col-md-11'>
							   		 <ul>
	                                          <li><a class="dw_c_orange" href="">所有</a></li>
	                                          <li><a onclick="setcash('2千以下')" class="" href="javascript:void(0)">2千以下</a></li>
	                                          <li><a onclick="setcash('2-3千')" class="" href="javascript:void(0)">2-3千</a></li>
	                                          <li><a onclick="setcash('3-4.5千')" class="" href="javascript:void(0)">3-4.5千</a></li>
	                                          <li><a onclick="setcash('4.5-6千')" class="" href="javascript:void(0)">4.5-6千</a></li>
	                                          <li><a  onclick="setcash('6-8千')" class="" href="javascript:void(0)">6-8千</a></li>
	                                          <li><a    onclick="setcash('6-8千')"  class="" href="javascript:void(0)">0.8-1万</a></li>
	                                          <li><a   onclick="setcash('6-8千')"  class="" href="javascript:void(0)">1-1.5万</a></li>
	                                          <li><a  onclick="setcash('6-8千')"   class="" href="javascript:void(0)">1.5-2万</a></li>
	                                          <li><a   onclick="setcash('6-8千')"  class="" href="javascript:void(0)">2-3万</a></li>
	                                          <li><a   onclick="setcash('6-8千')"  class="" href="javascript:void(0)">3-4万</a></li>
	                                          <li><a   onclick="setcash('6-8千')"  class="" href="javascript:void(0)">4-5万</a></li>
	                                          <li><a   onclick="setcash('6-8千')"  class="" href="javascript:void(0)">5万以上</a></li>
	                                     </ul>
                                   </div>
						   	 </div>
						   	 
						   	 <div class='search_item  ' style="border-bottom: 1px solid #DDD;">
						   		 <div class='col-md-1'>公司性质</div>
						   		 <div class='col-md-11'>
										<ul>
			                               <li><a class="dw_c_orange" href="">所有</a></li>
			                               <li><a  onclick="setnature('外资(欧美)')"  class="" href="javascript:void(0)">外资(欧美)</a></li>
			                               <li><a  onclick="setnature('外资(非欧美)')"  class="" href="javascript:void(0)">外资(非欧美)</a></li>
			                               <li><a  onclick="setnature('合资')"  class="" href="javascript:void(0)"  >合资</a></li>
			                               <li><a onclick="setnature('国企')"  class="" href="javascript:void(0)">国企</a></li>
			                               <li><a onclick="setnature('民营公司')"  class="" href="javascript:void(0)">民营公司</a></li>
			                               <li><a onclick="setnature('外企代表处')"  class="" href="javascript:void(0)">外企代表处</a></li>
			                               <li><a onclick="setnature('政府机关')"  class="" href="javascript:void(0)">政府机关</a></li>
			                               <li><a onclick="setnature('事业单位')"  class="" href="javascript:void(0)">事业单位</a></li>
			                               <li><a onclick="setnature('非营利机构')"  class="" href="javascript:void(0)">非营利机构</a></li>
			                               <li><a onclick="setnature('上市公司')"  class="" href="javascript:void(0)">上市公司</a></li>
			                               <li><a onclick="setnature('创业公司')"  class="" href="javascript:void(0)">创业公司</a></li>
			                			</ul>
                                   </div>
						   	 </div>
						   	 
						   	 
						   	 <div class='search_item  ' style="border-bottom: 1px solid #DDD;">
						   		 <div class='col-md-1'>工作年限</div>
						   		 <div class='col-md-11'>
										<ul>
                                                                                                                                            <li><a class="dw_c_orange" href="">所有</a></li>
                                                                                                                                            <li><a class="" href="">无经验</a></li>
                                                                                                                                            <li><a class="" href="">1-3年</a></li>
                                                                                                                                            <li><a class="" href="">3-5年</a></li>
                                                                                                                                            <li><a class="" href="">5-10年</a></li>
                                                                                                                                            <li><a class="" href="">10年以上</a></li>
                                            </ul>
                                   </div>
						   	 </div>
						   	 
						   	 
						   	  <div class='search_item  ' style="border-bottom: 1px solid #DDD;">
						   		 <div class='col-md-1'>学历要求</div>
						   		 <div class='col-md-11'>
										<ul>
                                                                                                                                            <li><a class="dw_c_orange" href="">所有</a></li>
                                                                                                                                            <li><a class="" href="">初中及以下</a></li>
                                                                                                                                            <li><a class="" href="">高中/中技/中专</a></li>
                                                                                                                                            <li><a class="" href="">大专</a></li>
                                                                                                                                            <li><a class="" href="">本科</a></li>
                                                                                                                                            <li><a class="" href="">硕士</a></li>
                                                                                                                                            <li><a class="" href="">博士</a></li>
                                            </ul>
                                   </div>
						   	 </div>
						   	 
						   	 
						   	 
						   	  
						   	  <div class='search_item  ' style="border-bottom: 1px solid #DDD;">
						   		 <div class='col-md-1'>公司规模</div>
						   		 <div class='col-md-11'>
										<ul>
                                                                                                                                            <li><a class="dw_c_orange" href="">所有</a></li>
                                                                                                                                            <li><a class="" href="">少于50人</a></li>
                                                                                                                                            <li><a class="" href="">50-150人</a></li>
                                                                                                                                            <li><a class="" href="">150-500人</a></li>
                                                                                                                                            <li><a class="" href="">500-1000人</a></li>
                                                                                                                                            <li><a class="" href="">1000-5000人</a></li>
                                                                                                                                            <li><a class="" href="">5000-10000人</a></li>
                                                                                                                                            <li><a class="" href="">10000人以上</a></li>
                                            </ul>
                                   </div>
						   	 </div>
						   	 
						   	 
						   	 
						  </div>
						</div>

					 </div>
					 
					 
					 <!-- 职位列表 -->
					   <div class='col-md-12' >
			        
			        	<div class="panel panel-default">
						  <div class="panel-body">
						  		<table class="table table-hover">
								  <thead>
								  	<tr>
								  		<th>职位名</th>
								  		<th>公司名</th>
								  		<th>地点</th>
								  		<th>薪资</th>
								  		<th>发布日期</th>
								  	</tr>
								  </thead>
								  <tbody id='job-tbody'>
								  	<tr>
								  		<td><a href='job/id'>商务专员</a></td>
								  		<td>武汉合康动力技术有限公司</td>
								  		<td>武汉</td>
								  		<td><span class='cash'>2.5-3.5千/月</span> </td>
								  		<td>03-09</td>
								  	</tr>
								  	<tr>
								  		<td>硬件工程师</td>
								  		<td>武汉合康动力技术有限公司</td>
								  		<td>武汉</td>
								  		<td><span class='cash'>2.5-3.5千/月</span> </td>
								  		<td>03-09</td>
								  	</tr>
								  	
								  	<tr>
								  		<td>软件工程师工程师</td>
								  		<td>武汉合康动力技术有限公司</td>
								  		<td>武汉</td>
								  		<td><span class='cash'>2.5-3.5千/月</span> </td>
								  		<td>03-09</td>
								  	</tr>
								  	
								  	<tr>
								  		<td>测试工程师</td>
								  		<td>武汉合康动力技术有限公司</td>
								  		<td>武汉</td>
								  		<td><span class='cash'>5-5.5千/月</span> </td>
								  		<td>03-09</td>
								  	</tr>
								  	
								  	<tr>
								  		<td>UI工程师</td>
								  		<td>武汉合康动力技术有限公司</td>
								  		<td>武汉</td>
								  		<td><span class='cash'>4-5.5千/月</span> </td>
								  		<td>03-09</td>
								  	</tr>
								  	
								  	<tr>
								  		<td>交互工程师</td>
								  		<td>武汉合康动力技术有限公司</td>
								  		<td>武汉</td>
								  		<td><span class='cash'>4-5.5千/月</span> </td>
								  		<td>03-09</td>
								  	</tr>
								  	
								  </tbody>
								</table>
						  </div>
						</div>

					 </div>
					 
					 
					 
		 </div>
	          
	        </div>
      <!--

      Main Content start

      //-->
      </section>
 
 
    </div>
    
	<%@include file="./footer.jsp" %>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
        <script src="js/vendor/jquery-1.11.0.min.js"></script>

    <script src="js/vendor/core-1.0.5.js"></script>

    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.mCustomScrollbar.min.js"></script>
    <script src="js/jquery.mousewheel.min.js"></script>
    <script src="js/jquery.colorbox-min.js"></script>
    <script src="js/preloadCssImages.jQuery_v5.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <!--
    * jQuery with jQuery Easing, and jQuery Transit JS
    //-->
    <script src="js/layerslider/jquery-easing-1.3.js" type="text/javascript"></script>
    <script src="js/layerslider/jquery-transit-modified.js" type="text/javascript"></script>
    <!--
    * LayerSlider from Kreatura Media with Transitions
    -->
    <script src="js/layerslider/layerslider.transitions.js" type="text/javascript"></script>
    <script src="js/layerslider/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>
    <script src="js/jquery.rivathemes.js"></script>
    <script type="text/javascript">
    
		 function setcash(cash){
			 $("input[name='cash']").val(cash);
			 do_query();
		 }
		 
		 function setnature(nature){
			 $("input[name='nature']").val(nature);
			 do_query();
		 }
    function do_query(){
    	$.ajax({
 		   type: "POST",
 		   url:   "${pageContext.request.contextPath}/joblist",
 		   data: $("form").serialize(),
 		   success: function(msg){
 		     if(msg.code==1){
 		    	 $("#job-tbody").empty();
 		    	for(i=0;i<msg.datas.length;i++){
 		    		var tr="<tr>"+
						  	"	<td><a href='viewjob?id="+msg.datas[i].id+"'>"+msg.datas[i].name+"</a></td>"+
						  	"	<td>"+msg.datas[i].deptment.name+"("+msg.datas[i].scale+","+msg.datas[i].nature+")</td>"+
						  	"	<td>"+msg.datas[i].addr+"</td>"+
						  	"	<td><span class='cash'>"+msg.datas[i].cash+"</span> </td>"+
						  	"	<td>"+msg.datas[i].createDate+"</td>"+
						  	"</tr>";
						  	 $("#job-tbody").append(tr);
 		    	}
 		     }else
 		    	alert("没有找到符合条件的职位");
 		   }
 		});
    }
    
    
    
      $('document').ready(function() {
    	  $("#span_${category.id}").addClass("active");
          /*

          Home Page Layer Slider

          */
          $('#layerslider').layerSlider({
            skinsPath               : 'css/layerslider/skins/',
            skin : 'fullwidth',
            thumbnailNavigation : 'hover',
            hoverPrevNext : false,
            responsive : false,
            responsiveUnder : 1170,
            sublayerContainer : 1170
          });
          /*

          Latest Projects Slider
          
          */
          $('#latest-projects').rivaSlider({
            visible : 4,
            selector : 'envor-project'
          });
          /*

          Our Partners Slider

          */
          $('#our-partners').rivaCarousel({
            visible : 5,
            selector : 'envor-partner-logo',
            mobile_visible : 1
          });
          /*

          Footer News Slider

          */
          $('#footer-news').rivaSlider({
            visible : 1,
            selector : 'envor-post-preview'
          });
          /*

          Testimonials #1 Carousel

          */
          $('#clients-testimonials').rivaCarousel({
            visible : 1,
            selector : 'envor-testimonials-1',
            mobile_visible : 1
          });
      });
    </script>
    <script src="js/envor.js"></script>
    <script type="text/javascript">
      $('document').ready(function() {
          /*

          Preload Images

          */
          var imgs = new Array(), $imgs = $('img');
          for (var i = 0; i < $imgs.length; i++) {
            imgs[i] = new Image();
            imgs[i].src = $imgs.eq(i).attr('src');
          }
          Core.preloader.queue(imgs).preload(function() {
            var images = $('a').map(function() {
                    return $(this).attr('href');
            }).get();
            Core.preloader.queue(images).preload(function() {
                  $.preloadCssImages();
            })
          })
                  $('#envor-preload').hide();
      });
      /*

      Windows Phone 8 и Internet Explorer 10

      */
      if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
        var msViewportStyle = document.createElement("style")
        msViewportStyle.appendChild(
          document.createTextNode(
            "@-ms-viewport{width:auto!important}"
          )
        )
        document.getElementsByTagName("head")[0].appendChild(msViewportStyle)
      }
    </script>
  </body>
</html>