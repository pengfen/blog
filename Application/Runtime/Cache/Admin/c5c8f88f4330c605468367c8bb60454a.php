<?php if (!defined('THINK_PATH')) exit();?><form class="form-horizontal" action="<?php echo U('User/update', array('id'=>$id));?>">
  <div class="form-group">
    <label for="authname" class="col-sm-2 control-label">用户名</label>
    <div class="col-sm-9">
      <?php echo ($name); ?>
    </div>
  </div>
  <div class="form-group">
    <label for="authname" class="col-sm-2 control-label">状态</label>
    <div class="col-sm-9">
      <input type="radio" name='state' value="1" <?php if($state == 1): ?>checked<?php endif; ?>/> 启用
      <input type="radio" name='state' value="0" <?php if($state == 0): ?>checked<?php endif; ?>/> 禁用
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">修改用户状态</button>
    </div>
  </div>
</form>