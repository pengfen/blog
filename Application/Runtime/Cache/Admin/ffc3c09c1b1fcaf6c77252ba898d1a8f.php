<?php if (!defined('THINK_PATH')) exit();?>
<form class="form-horizontal" action="<?php echo U('Dir/insert');?>" method="post">
<input type='hidden' name="flag" value="<?php echo ($flag); ?>"/>

  <div class="form-group">
    <label for="tablename" class="col-sm-2 control-label">表名</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" name='name' id="tablename" placeholder="请输表名" value="<?php echo ($v["name"]); ?>">
    </div>
  </div>
  <div class="form-group">
    <label for="authname" class="col-sm-2 control-label">表结构</label>
    <div class="col-sm-9">
      <textarea name='struct'><?php echo ($v["struct"]); ?></textarea>
    </div>
  </div>
  <div class="form-group">
    <label for="controller" class="col-sm-2 control-label">控制器名</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" id="controller" name='controller' placeholder="请输入控制器名" value="<?php echo ($v["controller"]); ?>">
    </div>
  </div>
  <div class="form-group">
    <label for="method" class="col-sm-2 control-label">控制器中操作方法</label>
    <div class="col-sm-9">
      <textarea name='method'><?php echo ($v["method"]); ?></textarea>
    </div>
  </div>
    <div class="form-group">
    <label for="model" class="col-sm-2 control-label">模型名</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" id="model" name='model' placeholder="请输入模型名" value="<?php echo ($v["model"]); ?>">
    </div>
  </div>
  <div class="form-group">
    <label for="modmet" class="col-sm-2 control-label">模型中操作方法</label>
    <div class="col-sm-9">
      <textarea name="modmet"><?php echo ($v["modmet"]); ?></textarea>
    </div>
  </div>
    <div class="form-group">
    <label for="template" class="col-sm-2 control-label">模板</label>
    <div class="col-sm-9">
      <textarea name="template"><?php echo ($v["template"]); ?></textarea>
    </div>
  </div>
  <div class="form-group">
    <label for="note" class="col-sm-2 control-label">备注</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" id="note" name='note' placeholder="请输入备注" value="<?php echo ($v["note"]); ?>">
    </div>
  </div>
  <div class="form-group">
    <label for="des" class="col-sm-2 control-label">描述</label>
    <div class="col-sm-9">
      <textarea name='des'><?php echo ($v["des"]); ?></textarea>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
    
      <button type="submit" class="btn btn-default">添加目录</button>
    
    </div>
  </div>
</form>