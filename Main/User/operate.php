
	<!-- 用户中心 -->
	<div class="user">
		<i class="iconfont icon-user"></i>
		<input id="d" placeholder="请输入你的账号" />
		<span id="msg" class="comm-tip"><i></i><em>提示信息</em></span>
	</div>

	<div class="score">
		<a class="score-number" id="info" href="./change.html" title="进入兑换界面" >
			<i class="iconfont icon-score"></i>
			<em id="score">0</em>分
		</a>
		<span class="score-mode" id="changeMode">
			<a class="score-item score-item-value" id="changeModeTemplate" style="display:none;" href="javascript:;" title="添加兑换方式" ><i class="iconfont"></i><span>+</span></a>
			<a class="score-item" id="changeModeAdd" href="javascript:;" title="添加兑换方式" ><i class="iconfont"></i><span>+</span></a>
		</span>
		<div class="comm-clear"></div>
		<div class="score-edit">
			<select id="scoreEdit_type">
				<option value="1">英雄联盟</option>
				<option value="2">支付宝</option>
			</select>
			<select id="scoreLol_server">
				<option value="1">艾欧尼亚</option>
				<option value="2">祖安</option>
				<option value="3">诺克萨斯</option>
				<option value="4">班德尔城</option>
				<option value="5">皮尔特沃夫</option>
				<option value="6">战争学院</option>
				<option value="7">巨神峰</option>
				<option value="8">雷瑟守备</option>
				<option value="9">钢铁烈阳</option>
				<option value="10">裁决之地</option>
				<option value="11">黑色玫瑰</option>
				<option value="12">暗影岛</option>
				<option value="13">均衡教派</option>
				<option value="14">水晶之痕</option>
				<option value="15">影流</option>
				<option value="16">守望之海</option>
				<option value="17">征服之海</option>
				<option value="18">卡拉曼达</option>
				<option value="19">皮城警备</option>
				<option value="20">比尔吉沃特</option>
				<option value="21">德玛西亚</option>
				<option value="22">弗雷尔卓德</option>
				<option value="23">无畏先锋</option>
				<option value="24">恕瑞玛</option>
				<option value="25">扭曲丛林</option>
				<option value="26">巨龙之巢</option>
			</select>
			<div class="comm-clear"></div>
			<input id="scoreEdit_account" type="text" placeholder="账号" />
			<div class="comm-clear"></div>
			<input id="scoreEdit_name" type="text" placeholder="名称" />
			<a id="scoreLol_log" href="javascript:;" target="_blank">查看战绩</a>
			<div class="comm-clear"></div>
			<a id="score_yes" href="javascript:;" >确认</a>
			<a id="score_del" href="javascript:;" >删除</a>
			<a id="score_no" href="javascript:;" >取消</a>
		</div>
	</div>
	<script type="text/javascript" src="./js/game.user.js" ></script>
	<script type="text/javascript">

		var my = new User();	// 初始用户功能

		my.init(function(data){
			my.setTip(data.msg);
			if ( data.status ) {
				$('#d').val(data.user.name);
			}
		});	// 初始化用户

		// 快速登录
		$('#d').change(function(){
			var value = $(this).val();
			if ( value == '' ) {
				my.setTip('无效的名称');
				$(this).val(user.name);
			} else {
				my.getUserByName(value, function(data){
					my.setTip(data.msg);
				});
			}
			$('.score-edit').hide();
			$('.score-item').removeClass('act');
		});

		// 打开兑换方式编辑界面
		$('#changeModeAdd').click(function(){
			$(this).siblings().removeClass('act');
			if ( $(this).hasClass('act') ) {
				$(this).removeClass('act');
				$('.score-edit').hide();
			} else {
				$(this).addClass('act')
				$('.score-edit').show();

				// 初始化编辑界面
				my.initChangeMode();
			}

			$('#scoreEdit_type').show();
			$('#scoreLol_server').show();
			$('#scoreLol_log').hide();
		});

		// 点击编辑界面的确认按钮
		$('#score_yes').click(function(){
			var source = $('.score-item.act').data('val'),
				value = {
					type: $('#scoreEdit_type').val(),
					account: $('#scoreEdit_account').val(),
					name: $('#scoreEdit_name').val(),
					remark: $('#scoreLol_server option:selected').val()
				};

			// 检测参数是否完整
			if ( !ntfs(value.account) ) {
				$('#scoreEdit_account').focus();
				return;
			}
			if ( !ntfs(value.name) ) {
				$('#scoreEdit_name').focus();
				return;
			}

			// 修改当时方式
			if ( source ) {
				value['id'] = source.id;
				my.updateChangeMode(value, function(data){
					if ( data.status ) {
						source = $.extend(source, value);
						my.setChangeMode($('.score-item.act'), source);
						$('.score-edit').hide();
					}
				});

			// 新增当前方式
			} else {
				my.addChangeMode(value, function(data){
					if ( data.status ) {
						var template = $('#changeModeTemplate'),
							temp = template.clone(false).removeAttr('id');
						temp = my.setChangeMode(temp, data.info);
						template.before(temp);
						$('.score-edit').hide();
					}
				});
			}
		});

		// 删除方式
		$('#score_del').click(function(){
			var item = $('.score-item.act'),
				value = item.data('val');
			my.delChangeMode(value.id, function(data){
				if ( data.status ) {
					item.remove();
					$('.score-edit').hide();
				}
			});
		})

		// 关闭编辑界面
		$('#score_no').click(function(){
			$('.score-edit').hide();
			$('.score-item').removeClass('act');
		})

		// 兑换方式分类选择
		$('#scoreEdit_type').change(function(){
			var el_lol = $('#scoreLol_server'),
				val = $(this).val();
			if ( val == 1 ) {
				el_lol.show();
			}
			if ( val == 2 ) {
				el_lol.hide();
			}
		});

		// 查看战绩
		$('#scoreLol_log').mouseover(function(){
			var server = $('#scoreLol_server option:selected').text(),
				name = $('#scoreEdit_name').val();
			$(this).attr('href', 'http://lolbox.duowan.com/playerDetail.php?serverName='+ server +'&playerName='+ name);
		});

	</script>