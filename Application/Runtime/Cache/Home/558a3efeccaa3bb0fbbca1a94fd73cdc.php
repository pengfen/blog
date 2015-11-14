<?php if (!defined('THINK_PATH')) exit();?><script>
	$(function(){
		//异步点赞
		$('.good').click(function(){
		    var $url="<?php echo U('Photo/good');?>";
			var $id=$(this).next('input').val();
			var _this = $(this);
			$.ajax({
				url:$url,
				data:{id:$id},
				success:function(num){
					_this.next().next().html('');
				    _this.next().next().append(num);
				}
			})
		})
       
       //评论弹框
		$('.speak').click(function(){
			$(this).next().css({display:'block'});
		})

		//异步提交评论表单
		$('.send').click(function(){
			$url="<?php echo U('PhotoReview/add');?>";
			$content=$(this).prev('input').val();
			$pid=$(this).next().val();
			$rid=$(this).next().next().val();
			_this=$('.popover');
			$.ajax({
				url:$url,
				type:'post',
				data:{content:$content,pid:$pid,rid:$rid},
				success:function(){
					_this.css({display:'none'});
					//console.log(data);
					alert('评论成功');
					// $('#v').attr({name:rev});

				}
			})
		})

    })
	
</script>
<div style="margin-bottom:10px;">
	<img id="firstImage" src="/blog/Uploads/<?php echo ($list["first"]); ?>" width="60">
	<b>&nbsp;&nbsp;相册名:</b>
	<?php echo ($list["album_name"]); ?>	
	<span id="first"><a href=<?php echo U('Album/index');?> data-target="#meModal"> &nbsp;->相册目录</a></span>
</div>
<div class="row">
  <?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="col-xs-6 col-md-3">
	    <a href="javascript:void(0)" class="thumbnail">
	      <img src="/blog/Uploads/<?php echo ($vo["photo_name_thumb"]); ?>">
	    </a>
	    <div style="background:white;padding:5px;">
	    	<p>描述:<?php echo ($vo["photo_des"]); ?></p>
	    	<a href="javascript:void(0)" class="good">赞</a>
	    	<input type='hidden' value="<?php echo ($vo["id"]); ?>">
				<span><?php if($vo["good"] != 0): ?>&nbsp;<?php echo ($vo["good"]); endif; ?></span>
	    	<a href="javascript:void(0)" class='btn speak' data-toggle='popover' data-placement='top'>&nbsp;&nbsp;评论</a>	
			 <div class="popover fade top in" style="top:-58px;left:58.5px;display:none;">
		    	<div class='arrow'></div>
		    	<h3 class='popover-title'>评论</h3>
				<div class='popover-content'>
						<input type='hidden' value="<?php echo U('Review/addReview');?>">
						<input type='text' name='content' style='width:200px;'>
						
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-primary send">发表</button>
						<input type='hidden' value="<?php echo ($vo["id"]); ?>" name='pid'>
						<input type='hidden' value="<?php echo ($rid); ?>" name='pid'>
					
				</div>
			 </div>
	    </div>
	  </div><?php endforeach; endif; else: echo "" ;endif; ?>    
</div>
<!--start-->
<div class="row" style='margin-top:38px;'>
	<div class='col-md-3'></div>
	<div class='col-md-6'>
		<table class='table table-hover'>
			<thead>
				<tr>
					<th colspan='2'>用户</th>
					<th>评论</th>
					<th>时间</th>
				</tr>
			</thead>
			<tbody>
				<?php if(is_array($rev)): $i = 0; $__LIST__ = $rev;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr>
				    	<td>
				    		<img src="/blog/Avatar/<?php echo ($v["head_img_small"]); ?>"class="img-circle">
				    	</td>
						<td><?php echo ($v["username"]); ?></td>
						<td><?php echo ($v["content"]); ?></td>
						<td><?php echo date('m月d日 H时i分s秒',$v['addtime']);?></td>	
					</tr><?php endforeach; endif; else: echo "" ;endif; ?>
			</tbody>
		</table>
	</div>
	<div class='col-md-3'></div>
</div>