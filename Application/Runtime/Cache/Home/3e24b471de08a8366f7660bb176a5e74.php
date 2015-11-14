<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo ($title); ?></title>
    <link href="/blog/Public/Bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="/blog/Public/Home/Js/jquery-2.1.4.min.js"></script>
    <script src="/blog/Public/Bootstrap/js/bootstrap.min.js"></script>
    <style type="text/css">
		body{
			background: url('/blog/Public/Home/Images/bg.jpg') repeat-x;
			background-position:10px 50px;
			background-color:#F1E9D6;
		}
    </style>
    
	<style type="text/css">
		#main{
		margin-top:285px;
		}
		ul li{
			list-style: none;
		}
	</style>

  </head>
  <body >
   <!--header-->
    <nav class="navbar navbar-default navbar-fixed-top" id='head' style='background-color:#f90;color: #fff;'>
      <div class="container-fluid container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand " href="<?php echo U('Index/index');?>" style='color:#fff;'><b>畅享世界</b></a>
        </div>
        <script type="text/javascript">
        $(function(){
           $('#mynav .nav_li').mouseover(function(){
           	 $(this).css('background','#9c3').siblings().css('background','#f90');

          //alert('ok');
         
        })
           $('#mynav #<?php echo ACTION_NAME;?>').css('background','#9c3');
           	
        })
       
        </script>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        
          <ul class="nav navbar-nav" id='mynav'>
            <li class="nav_li" id='index'><a href="<?php echo U('Index/index');?>" style='color:#fff;font-size:bloder'><b>个人中心 </b><span class="sr-only">(current)</span></a></li>
            <li class="nav_li" id='resource'><a href="<?php echo U('Resource/index');?>" style='color:#fff'><b>资料交易 </b></a></li>
            <li class="nav_li" id='searchfriend'><a href="<?php echo U('Friend/searchfriend');?>" style='color:#fff'><b>找好友</b></a></li>
             <li class="nav_li" id='myhome'><a href="<?php echo U('User/myhome');?>"  style='color:#fff'><b>我的主页</b></a></li>
             <!--
            <li class="dropdown nav_li"  id='myhome'>
              <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style='color:#fff'><b></b> <span class="caret"></span></a>
              
              <ul class="dropdown-menu" >
                <li><a href="<?php echo U('Say/index');?>">说说</a></li>
                <li><a href="<?php echo U('Log/index');?>">日志</a></li>
                <li><a href="<?php echo U('Album/index');?>">相册</a></li>
                <li><a href="<?php echo U('Message/index');?>">留言</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="<?php echo U('Resource/index');?>">我的资料库</a></li>
                <li role="separator" class="divider"></li>
           
              </ul>
            </li>-->
          </ul>
          
          <form class="navbar-form navbar-left" role="search" action="<?php echo U('Search/index');?>">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="用户/应用/动态">
            </div>
            <button type="submit" class="btn btn-default">搜索</button>
          </form>
          <ul class="nav navbar-nav navbar-right">
           <li><a style="color:#fff"><b>欢迎你<?php echo $_SESSION['user']['username']?></b></a></li>
            <li><a href="<?php echo U('Login/logout');?>" style='color:#fff'><b>退出</b></a></li>
           
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style='color:#fff'><b>设置</b> <span class="caret"></span></a>
              <ul class="dropdown-menu">
                
                <li><a href="<?php echo U('User/auth');?>">权限设置</a></li>
                <li><a href="<?php echo U('User/edit');?>">修改资料</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="Index/help">帮助中心 </a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>  
	
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!--main-->
				
	<div id='main' class="row">
		<div class="col-md-9">
			<div class="panel panel-default">
			  <div class="panel-heading">
			    <h3 class="panel-title">
			    	标题: <?php echo ($news["title"]); ?>
			    </h3>
			  </div>
			  <div class="panel-body">
			    <p><?php echo ($news["content"]); ?></p>
			  </div>
			  <div class="panel-footer">发布时间:<?php echo date('Y-m-d H:i:s',$news['addtime']);?> 已被浏览<?php echo ($news["hot"]); ?>次</div>
			</div>
		</div>
		<div class="list-group col-md-3">
		  <a  class="list-group-item " style="background:#fc3">
		    <b>热门新闻</b>
		  </a>
		  <?php if(is_array($newslist)): $i = 0; $__LIST__ = $newslist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="/blog/index.php/Home/News/index/newsid/<?php echo ($vo["id"]); ?>.html" class="list-group-item"><?php echo ($vo["title"]); ?> </a><?php endforeach; endif; else: echo "" ;endif; ?>
		  
		 
		</div>
	</div>

				<!--end main-->
			</div>
		</div>
	</div>
  
   
  </body>
</html>