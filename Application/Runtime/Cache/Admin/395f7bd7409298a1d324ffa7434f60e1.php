<?php if (!defined('THINK_PATH')) exit();?><form class="form-horizontal" action="<?php echo U('AdviceReviews/insert');?>" method="post">
    <input type="hidden" name='cid' value="<?php echo ($id); ?>"/>
    <div class="form-group">
        <label for="authname" class="col-sm-2 control-label">请输入回得内容</label>
        <div class="col-sm-9">
            <textarea name="content"></textarea>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">回复</button>
        </div>
    </div>
</form>