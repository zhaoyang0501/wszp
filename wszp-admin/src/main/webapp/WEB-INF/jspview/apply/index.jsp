<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
</head>
<body >
    <div class="wrapper wrapper-content animated fadeInRight">
       <div class="row">
            <div class="col-sm-12">
                <div class="ibox ">
                    <div class="ibox-title">
                        <h5>简历查看 </h5>
                        <div class="ibox-tools">
                        </div>
                    </div>
                    
                    <div class="ibox-content">
                        <form role="form" class="form-inline">
                            <div class="form-group">
                                <label for="exampleInputEmail2" class="sr-only">职位名称</label>
                                <input type="text" placeholder="职位名称" id="_name" class="form-control">
                            </div>
                            <button class="btn btn-primary" type="button" id='_search'><i class="fa fa-search"></i>查询</button>
                             
                        </form>
                    </div>
                    
                    <div class="ibox-content ">
                         <table ID='dt_table_view' class="table table-striped table-bordered table-hover ">
                            <thead>
                                <tr>
                               		 <th>申请人</th>
									<th>申请公司</th>
									<th>申请职位</th>
									<th>工作地点</th>
									<th>查看</th>
									<th>申请日期</th>
									<th>查看</th>
								</tr>
                            </thead>
                       		 <tbody>
                            </tbody>
                          </table>
                    </div>
                    
                </div>
            </div>
        </div>
   </div>
      <div id='_form' style="display: none;">
       <div class="ibox-content">
 		 <div class="row">
                            <div class="col-sm-12 b-r">
		                           <form id='form' class="form-horizontal" action="">
		                           <input name='id' type="hidden"/>
		                           	<table class='table table-bordered'>
		                           		<thead>
		                           		<tr style="text-align: center;" ><td colspan="6" ><h3>查看简历<h3></h3></td></tr>
		                           		</thead>
		                           		<tbody>
		                           		
		                           					
		                           			<tr>
		                           				<td>姓名</td>
		                           				<td> 
		                           				<span id='username'></span> 
		                           				</td>
		                           			</tr>
                      
		                           			<tr>
		                           				<td>电子邮箱</td>
		                           				<td><span id='useremail'></span> </td>
		                           			</tr>
		                           			<tr>
		                           				<td>电话</td>
		                           				<td><span id='usertel'></span></td>
		                           			</tr>
		                           			<tr>
		                           				<td>毕业学校</td>
		                           				<td> <span id='usergrade'></span></td>
		                           			</tr>
		                           			
		                           			<tr>
		                           				<td>教育经历</td>
		                           				<td> <textarea  style="width: 90%" name='edu' rows="4" cols=""></textarea> </td>
		                           			</tr>
		                           			<tr>
		                           				<td>工作经历</td>
		                           				<td><textarea  style="width: 90%" name='work' rows="4" cols=""></textarea></td>
		                           			</tr>
		                           				<tr>
		                           				<td>项目经历</td>
		                           				<td><textarea  style="width: 90%" name='project' rows="4" cols=""></textarea></td>
		                           			</tr>
		                           			<tr>
		                           				<td>自我评价</td>
		                           				<td> <textarea style="width: 90%" name='self' rows="4" cols=""></textarea></td>
		                           			</tr>
		                           				
		                           		</tbody>
		                           	</table>
		                           	</form>
                            </div>
                        </div>
                        </div>
   </div>
   <script>
    var table=null;
    
    function submit_form(){
    	$.ajax({
    		   type: "POST",
    		   url:  $.common.getContextPath() + "/job/save",
    		   data: $("form").serialize(),
    		   success: function(msg){
    		     if(msg.code==1){
    		    	 toastr.success('操作成功');
    		    	 table.draw();
    		     }
    		     layer.closeAll() ;
    		   }
    		});
     }
    
    function fun_view(id){
    	$.ajax({
	 		   url:  $.common.getContextPath() + "/apply/getresume?id="+id,
	 		   success: function(msg){
	 		     if(msg.code==1){
	 		    	$("#username").html(msg.datas.user.name);
	 		    	$("#useremail").html(msg.datas.user.email);
	 		  	 	$("#usertel").html(msg.datas.user.tel);
	 		  		$("#usergrade").html(msg.datas.user.grade);
	 		  		$("#usergrade").html(msg.datas.user.grade);
	 		
	 				$("textarea[name='edu']").val(msg.datas.resume.edu);
	 				$("textarea[name='project']").val(msg.datas.resume.project);
	 				$("textarea[name='self']").val(msg.datas.resume.self);
	 				$("textarea[name='work']").val(msg.datas.resume.work);
	        		layer.open({
	        			  type: 1,
	        			  skin: 'layui-layer-rim', //加上边框
	        			  content: $("#_form"),
	        			  area: "800px"
	        			});
	 		     }
	 		   }
	 	});
    }
    function fun_delete(id){
    	layer.confirm('确定删除当前职位？', {
    		  btn: ['确定','取消'] //按钮
    		}, function(){
    			$.ajax({
    		 		   url:  $.common.getContextPath() + "/job/delete?id="+id,
    		 		   success: function(msg){
    		 		     if(msg.code==1){
    		 		    	 toastr.success('操作成功');
    		 		    	 table.draw();
    		 		     }
    		 		     layer.closeAll() ;
    		 		   }
    		 	});
    		}, function(){
    			 layer.closeAll() ;
    		});
     }
    
    var comment_layer_index;
    var curid;
    function fun_comment(id){
    	curid=id;
    	fun_initcomments();
    	comment_layer_index= layer.open({
			  type: 1,
			  skin: 'layui-layer-rim', 
			  content: $("#_form"),
			  area: "800px"
			});
     }
    function fun_initcomments(id){
    	$.ajax({
   		   url:  $.common.getContextPath() + "/news/news/comments/"+curid,
   		   success: function(msg){
   		     if(msg.code==1){
   		    	$("#table_comments").empty();
   		    	for(var i=0;i<msg.datas.length;i++){
   		    		$("#table_comments").append("<tr>"+
 						   		 			"<td>"+msg.datas[i].body+"</td>"+
 						   		 			"<td>"+msg.datas[i].user.username+"("+msg.datas[i].user.chinesename+")</td>"+
 						   		 		    "<td>"+msg.datas[i].createDate+"</td>"+
 						   		 	    "<td><a tager='_blank' href='javascript:void(0)' onclick='fun_deletecomment("+msg.datas[i].id+")'>删除 </a></td>"+
 						   		 		"</tr>");
   		    	}
   		     }
   		   }
    	});
    	 table.draw();
    }
    
    
    function fun_deletecomment(id){
    	var index = layer.confirm('确定删除当前评论？', {
    		  btn: ['确定','取消'] //按钮
    		}, function(){
    			$.ajax({
    		 		   url:  $.common.getContextPath() + "/news/news/deleteComments/"+id,
    		 		   success: function(msg){
    		 		     if(msg.code==1){
    		 		    	 toastr.success('操作成功');
    		 		    	fun_initcomments(id);
    		 		     }else{
    		 		    	 toastr.warning(msg.msg);
    		 		     }
    		 			 layer.close(index) ;
    		 		   }
    		 	});
    		}, function(){
    			 layer.close(index) ;
    		});
     }
    
    
    $(document).ready(function(){
        	$("#_new").click(function(){
        		$("input[name='id']").val("");
 		    	$("input[name='chinesename']").val("");
 		    	$("radio[name='sex']").val("");
 		   		$("input[name='username']").val("");
 				$("input[name='tel']").val("");
 				$("input[name='email']").val("");
 				$("textarea[name='remark']").val("");
        		layer.open({
        			  type: 1,
        			  skin: 'layui-layer-rim', //加上边框
        			  content: $("#_form"),
        			  area: "800px"
        			});
        	});
        	table=$('#dt_table_view').DataTable( {
        		"dom": "rt<'row'<'col-sm-5'i><'col-sm-7'p>>",
	            "ajax": {
	                "url":  $.common.getContextPath() + "/apply/list",
	                "type": "POST",
	                "dataSrc": "datas"
	              },
	              
				"columns" : [{
					"data" : "user.name"
				},{
					"data" : "job.deptment.name"
				}, {
					"data" : "job.name"
				}, {
					"data" : "job.addr"
				}, {
					"data" : "state"
				}, {
					"data" : "createDate"
				},{
					"data" : "id",
				}] ,
				 "columnDefs": [
				              
				                {
				                    "render": function ( data, type, row ) {
				                   	 return "<a tager='_blank' href='javascript:void(0)' onclick='fun_view("+data+")'>查看 </a>"
				                    },
				                    "targets":6
				                },
				                {
				                    "render": function ( data, type, row ) {
				                    	if(data=='未查看')
				                   		 return "<span class='label label-danger'>未查看</span>";
				                   	 else
				                		 return "<span class='label label-success'>"+data+"</span>";
						                   
				                    },
				                    "targets":4
				                }
								
				              
				               
				            ],
        		"initComplete": function () {
        			var api = this.api();
        			$("#_search").on("click", function(){
            		 	api.draw();
        			} );
        		} 
        	 } ).on('preXhr.dt', function ( e, settings, data ) {
		        	data.value = $("#_name").val();
		        	data.columnname = 'name';
		        	return true;
		     } ).on('xhr.dt', function ( e, settings, json, xhr ) {
		    		 $(".dataTables_processing").hide();	
		     } )
        });
    </script>
    
</body>

</html>
