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
                        <h5>职位发布管理 </h5>
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
                              <button class="btn btn-primary" type="button" id='_new'><i class="fa fa-search"></i>发布新职位</button>
                             
                        </form>
                    </div>
                    
                    <div class="ibox-content ">
                         <table ID='dt_table_view' class="table table-striped table-bordered table-hover ">
                            <thead>
                                <tr>
									<th>公司</th>
									<th>职位</th>
									<th>工作地点</th>
									<th>薪资</th>
									<th>学历</th>
									<th>招收人数</th>
									<th>要求工作</th>
									<th>发布日期</th>
										<th>操作</th>
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
		                           		<tr style="text-align: center;" ><td colspan="6" ><h3>发布职位<h3></h3></td></tr>
		                           		</thead>
		                           		<tbody>
		                           		
		                           					
		                           			<tr>
		                           				<td>公司</td>
		                           				<td> 
		                           				<select name='deptment.id' class=" form-control">
												  	<c:forEach var="bean" items="${deptments}">
												  		<option value="${bean.id }">${bean.name }</option>
												  	</c:forEach>
												  </select>
		                           				</td>
		                           			</tr>
		                           			
		                           			<tr>
		                           				<td>职位名称</td>
		                           				<td> <input name='name' type="text" class="form-control"></td>
		                           			</tr>
		                           			
		                           				<tr>
		                           				<td>招收人数</td>
		                           				<td> <input name='num' type="text" class="form-control"></td>
		                           			</tr>
		                           			
		                           			<tr>
		                           				<td>学历要求</td>
		                           				<td>
			                           				  <select name='edu' class=" form-control">
													  		<option value="初中及以下">初中及以下</option>
													  		<option value="高中/中技/中专">高中/中技/中专</option>
													  		<option value="本科">本科</option>
													  		<option value="硕士">硕士</option>
													  		<option value="博士">博士</option>
													  </select>
		                           				</td>
		                           			</tr>
		                           			
		                           			<tr>
		                           				<td>工作年限</td>
		                           				<td>
			                           				  <select name='year' class=" form-control">
													  		<option value="无经验">无经验</option>
													  		<option value="1-3年">1-3年</option>
													  		<option value="3-5年">3-5年</option>
													  		<option value="5-10年">5-10年</option>
													  		<option value="10年以上">10年以上</option>
													  </select>
		                           				</td>
		                           			</tr>
		                           			
		                           			
		                           			
		                           			<tr>
		                           				<td>公司规模</td>
		                           				<td>
			                           				  <select name='scale' class=" form-control">
													  		<option value="少于50人">少于50人</option>
													  		<option value="50-150人">50-150人</option>
													  		<option value="500-1000人">500-1000人</option>
													  		<option value="1000-5000人">1000-5000人</option>
													  		<option value="10000人以上">10000人以上</option>
													  </select>
		                           				</td>
		                           			</tr>
		                           				
		                           				
		                           					
		                           			<tr>
		                           				<td>月薪范围</td>
		                           				<td>
			                           				  <select name='cash' class=" form-control">
													  		<option value="2千以下">2千以下</option>
													  		<option value="2-3千">2-3千</option>
													  		<option value="3-4.5千">3-4.5千</option>
													  		<option value="4.5-6千"> 4.5-6千</option>
													  		<option value="6-8千">6-8千</option>
													  		<option value="8-1万">8-1万</option>
													  		<option value="1-1.5万">1-1.5万</option>
													  		<option value="1.5-2万">1.5-2万</option>
													  		<option value="2-3万">2-3万</option>
													  		<option value="3-4万">3-4万</option>
													  			<option value="4-5万">4-5万</option>
													  			<option value="5万以上">5万以上</option>
													  </select>
		                           				</td>
		                           			</tr>
		                           			
		                           			<tr>
		                           				<td>公司性质</td>
		                           				<td>
		                           					  <select name='nature'class=" form-control">
															<option value="所有外资(欧美)">所有外资(欧美)</option>
															<option value="外资(非欧美)">外资(非欧美)</option>
															<option value="合资">合资</option>
															<option value="国企">国企</option>
															<option value="民营公司">民营公司</option>
															<option value="外企代表处">外企代表处</option>
															<option value="政府机关">政府机关</option>
															<option value="事业单位">事业单位</option>
															<option value="非营利机构">非营利机构</option>
														</select>
												</td>
		                           			</tr>
		                           					
		                           			<tr>
		                           				<td>地址</td>
		                           				<td>  <input name='addr' type="text" class="form-control"></td>
		                           			</tr>
		                           			<tr>
		                           				<td>联系方式</td>
		                           				<td><textarea name='tel' rows="3" cols="" style="width: 90%"></textarea></td>
		                           			</tr>
		                           			
		                           			
		                           			
											<tr>
												<td>职位介绍</td>
		                           				<td> <textarea name='remark' rows="5" cols="" style="width: 90%"></textarea></td>
		                           			</tr>
		                           			
		                           			
		                           			
		                           			
		                           		 
		                           			<tr>
		                           				<td>提示</td>
		                           				<td > 
		                           					 <h4>提示</h4>
		                               					 <ol>
									    					<li>介绍不超过2000个字</li>
									    				</ol>
		                           				</td>
		                           			</tr>
		                           			<tr>
		                           				<td colspan="6"> 
		                           					 <div class="col-sm-4 col-sm-offset-2">
		                                  			  		<button class="btn btn-primary" type="button" onclick="submit_form()">提交</button>
		                               				 </div>
		                           				</td>
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
    
    function fun_view(url){
    	layer.open({
    		  type: 2,
    		  title: '新闻详情',
    		  shadeClose: true,
    		  area: ['800px', '90%'],
    		  content: url
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
	                "url":  $.common.getContextPath() + "/job/list",
	                "type": "POST",
	                "dataSrc": "datas"
	              },
	              
				"columns" : [{
					"data" : "deptment.name"
				},{
					"data" : "name"
				}, {
					"data" : "addr"
				}, {
					"data" : "cash"
				}, {
					"data" : "edu"
				},{
					"data" : "num",
				},{
					"data" : "year",
				},{
					"data" : "createDate",
				},{
					"data" : "id",
				}] ,
				 "columnDefs": [
				              
				                {
				                    "render": function ( data, type, row ) {
				                   	 return "<a tager='_blank' href='javascript:void(0)' onclick='fun_delete("+data+")'>删除 </a>"
				                    },
				                    "targets":8
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
