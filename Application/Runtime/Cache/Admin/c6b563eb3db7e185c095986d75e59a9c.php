<?php if (!defined('THINK_PATH')) exit();?>
<form class="form-horizontal" action="<?php echo U('News/update');?>">
<input type='hidden' name='id' value="<?php echo ($v["id"]); ?>"/>


  <div class="form-group">
    <label for="authname" class="col-sm-2 control-label">标题名</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" name='title' id="authname" placeholder="请输入公告名称" value="<?php echo ($v["title"]); ?>">
    </div>
  </div>
  <div class="form-group">
    <label for='' class="col-sm-2 control-label">内容</label>
    <div class="dropdown col-sm-9">
	  <textarea name='content'><?php echo ($v["content"]); ?></textarea>
	</div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">

  <button type="submit" class="btn btn-default">修改公告</button>

    </div>
  </div>
</form>