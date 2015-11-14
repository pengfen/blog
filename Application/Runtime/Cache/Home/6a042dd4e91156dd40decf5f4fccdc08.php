<?php if (!defined('THINK_PATH')) exit();?><div>
	<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">基本信息</div>
  <div class="panel-body">
    <p></p>
  </div>

  <!-- Table -->
  <table class="table">
    <tbody>
    	<tr><td>昵称</td><td><?php echo ($user['username']); ?></td></tr>
    	<tr><td>身份</td><td><?php echo ($user['vocation']); ?></td></tr>
    	<tr><td>性别</td><td><?php  if($user['sex']==0){echo '保密';} if($user['sex']==1){echo '女';} if($user['sex']==2){echo '男';}?></td></tr>
    	<tr><td>经验值</td><td><?php echo ($user['experience']); ?></td></tr>
    	<tr><td>现居地</td><td><?php echo ($user['department']); ?></td></tr>
    	<tr><td>生日</td><td><?php echo ($user['birthday']); ?></td></tr>
    	<tr><td>联系方式</td><td><?php echo ($user['telphone']); ?></td></tr>
    </tbody>
  </table>
</div>
</div>