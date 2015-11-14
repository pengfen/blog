<?php if (!defined('THINK_PATH')) exit();?><extend name='Layout/index'/>

    <link href="/blog/Public/Admin/Css/managerAdd.css" rel='stylesheet'>
	<script src="/blog/Public/Admin/Js/managerAdd.js"></script>
	<style>
		#myform{
			background:#86B97E;
		}
		#titles{
			color:white;
			margin-left:10px;
			background:#FFB84C;
			padding-top:3px;
		}
	</style>


	<div class="container containerDiv">
		<div class="row">
			<div class='col-md-2'></div>
			<div class="col-md-8">	
				<h3 id='titles'>编辑管理员信息</h3>
				<form action="<?php echo U('Manager/update');?>" method="post" id="myform">
					<div class="form-group">
						<div class='int'>
							<lable for='username'>用 &nbsp;户 &nbsp;名：</lable>
							<?php echo ($list['username']); ?>
						</div>
						<script> var url="<?php echo U('Manager/checkEmail');?>" </script>
						<div class='int'>
							邮 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;箱：
							<?php echo ($list['email']); ?>
						</div>
						<div class='int'>
							职 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位：
								&nbsp;&nbsp;<select name='rid'>
									<option value='1' <?php if(($list['rid'] == 1)): ?>selected<?php endif; ?>>主管</option>
									<option value="2" <?php if(($list['rid'] == 2)): ?>selected<?php endif; ?>>项目经理</option>
									<option value="3" <?php if(($list['rid'] == 3)): ?>selected<?php endif; ?>>超级管理员</option>
									<option value="4" <?php if(($list['rid'] == 4)): ?>selected<?php endif; ?>>职员</option>
								</select>
						</div>
						<div class='int'>
							密 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：
							<input type='password' id='password' name='password' class='required'
							placeholder='密码6-12位'>
						</div>
						<div class='int'>
							确认密码：
							<input type='password' id='repassword' name='repassword' class='required' placeholder='两次密码一致'>
						</div>
						<div class='sub'>
							<input type='hidden' value="<?php echo ($list['id']); ?>" name='id'>
							<button class='btn btn-primary addButton' id="send">添&nbsp; 加</button>
						</div>
					</div>
				</form>
		</div>
		<div class="col-md-2"></div>
		</div>
	</div>