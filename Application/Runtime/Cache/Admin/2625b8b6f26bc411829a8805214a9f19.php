<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title><?php echo ($title); ?></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link href="/blog/Public/Assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="/blog/Public/Assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="/blog/Public/Assets/css/ace.min.css" />
		<link rel="stylesheet" href="/blog/Public/Assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="/blog/Public/Assets/css/ace-skins.min.css" />
		<script type="text/javascript" src="/blog/Public/Bootstrap/js/jquery-2.1.4.min.js"></script>
		<script src="/blog/Public/Assets/js/ace-extra.min.js"></script>
		
<link rel="stylesheet" type="text/css" href="/blog/Public/Admin/Css/apeng.css"/>

	</head>

	<body>
	    <!-- 头部导航 -->
		<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="glyphicon glyphicon-fire"></i>
							畅享世界后台管理系统
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
					    <?php echo W('Nav/message');?> 
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="/blog/Public/Assets/avatars/user.jpg" alt="<?php echo ($_SESSION['manager']['username']); ?>'s Photo" />
								<span class="user-info">
									<small>欢迎光临,</small>
									<?php echo ($_SESSION['manager']['username']); ?>
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">

								<li>
									<a href="#">
										<i class="icon-user"></i>
										个人资料
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="<?php echo U('Login/logout');?>">
										<i class="icon-off"></i>
										退出
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
							<button class="btn btn-success">
								<i class="icon-signal"></i>
							</button>

							<button class="btn btn-info">
								<i class="icon-pencil"></i>
							</button>

							<button class="btn btn-warning">
								<i class="icon-group"></i>
							</button>

							<button class="btn btn-danger">
								<i class="icon-cogs"></i>
							</button>
						</div>

						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>

							<span class="btn btn-info"></span>

							<span class="btn btn-warning"></span>

							<span class="btn btn-danger"></span>
						</div>
					</div><!-- #sidebar-shortcuts -->

					<?php echo W('Nav/menu');?>

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>


				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="<?php echo U('Index/index');?>">首页</a>
							</li>
							<li class="active"></li>
						</ul><!-- .breadcrumb -->
						<input type="hidden" name="controller" value="<?php echo (CONTROLLER_NAME); ?>"/>
						<input type="hidden" name="action" value="<?php echo (ACTION_NAME); ?>"/>
						<script type="text/javascript">
						    $href = "<?php echo U(CONTROLLER_NAME/ACTION_NAME);?>"; // 获取当前的路径
						    $controller = $(":input[name=controller]").val(); // 获取对应的控制器
						    $action = $(":input[name=action]").val(); // 获取对应的操作方法
						    $url = "<?php echo U('Index/breadcrumb');?>"; // 处理
						    $.ajax({
						    	url:$url,
						    	data:{controller:$controller,action:$action},
						    	success:function(data){
						    		$li = $("li[class=active]");
						    		$a = "<a href='" + $href + "'>" + data + "</a>";
						            $li.append($a);
						    		//alert(data[0]);
						    		//alert(data[1]);
						    	},
						    	//dataType:'json'
						    });
						</script>

						<div class="nav-search" id="nav-search">
							<form class="form-search" action="<?php echo ($link); ?>">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" name="search" />
									<i class="icon-search nav-search-icon"></i>
								</span>
								<button>提交</button>
							</form>
						</div><!-- #nav-search -->


					</div>
				</div>
				<!-- /.main-content -->
				<script type="text/javascript">
				function click(click){
					click.click(function(){
						var $url = $(this).next('input')[0].value;
						ajax($url);
						});
				}
				function ajax($url){
					// 异步请求
					$.ajax({
						url: $url,
						success: function(data){
							$('#right').text(''); // 清空以前的数据
							$('#right').append(data); // 将对应的模板放进主页显示
						}
					});
				}
				</script>
				
<div class='admin-mess'><?php echo ($_GET['mess']); ?></div>
<div id = 'right' class="col-md-10">
	<table class="table table-striped">
	    <thead>
	    	<tr>
	    		<th>编号</th>
	    		<th>照片</th>
	    		<th>描述</th>
	    		<th>点赞量</th>
	    		<th>相册ID</th>
	    		<th>添加时间</th>
	    		<th>编辑</th>
	    	</tr>
	    </thead>
	    <tbody>
	    	<?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
	    		<td><?php echo ($vo["id"]); ?></td>
	    		<td><img src="/blog/Uploads/<?php echo ($vo["photo_name_thumb"]); ?>" width=70></td>
	    		<td><?php echo ($vo["des"]); ?></td>
	    		<td><?php echo ($vo["good"]); ?></td>
	    		<td><?php echo ($vo["aid"]); ?></td>
	    		<td><?php echo date('Y-m-d H:i:s',$vo['create_time']);?></td>
	    		<td><a href="<?php echo U('Photo/delete',array('id'=>$vo['id']));?>">删除</a></td><?php endforeach; endif; else: echo "" ;endif; ?>
	    	<tr><td colspan="6" id='page'><?php if($count != '0'): ?>共有 <?php echo ($count); ?> 条记录 <?php echo ($page); else: ?>没有数据<?php endif; ?></td></tr>
	    </tbody>
    </table>
</div>

				

				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>

					<div class="ace-settings-box" id="ace-settings-box">
						<div>
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide">
									<option data-skin="default" value="#438EB9">#438EB9</option>
									<option data-skin="skin-1" value="#222A2D">#222A2D</option>
									<option data-skin="skin-2" value="#C6487E">#C6487E</option>
									<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
								</select>
							</div>
							<span>&nbsp; 选择皮肤</span>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
							<label class="lbl" for="ace-settings-navbar"> 固定导航条</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar"> 固定滑动条</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs">固定面包屑</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
							<label class="lbl" for="ace-settings-rtl">切换到左边</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
							<label class="lbl" for="ace-settings-add-container">
								切换窄屏
								<b></b>
							</label>
						</div>
					</div>
				</div><!-- /#ace-settings-container -->
			</div><!-- /.main-container-inner -->

			<!-- 返回顶部 -->
			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div> 
		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='/blog/Public/Assets/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
		</script>
		<script src="/blog/Public/Assets/js/bootstrap.min.js"></script>
		<script src="/blog/Public/Assets/js/typeahead-bs2.min.js"></script>
		<script src="/blog/Public/Assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="/blog/Public/Assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="/blog/Public/Assets/js/jquery.slimscroll.min.js"></script>
		<script src="/blog/Public/Assets/js/jquery.easy-pie-chart.min.js"></script>
		<script src="/blog/Public/Assets/js/jquery.sparkline.min.js"></script>
		<script src="/blog/Public/Assets/js/flot/jquery.flot.min.js"></script>
		<script src="/blog/Public/Assets/js/flot/jquery.flot.pie.min.js"></script>
		<script src="/blog/Public/Assets/js/flot/jquery.flot.resize.min.js"></script>
		<script src="/blog/Public/Assets/js/ace-elements.min.js"></script>
		<script src="/blog/Public/Assets/js/ace.min.js"></script>
</body>
</html>