
// 获取赞助且呈现到页面
// function getSuport () {
// 	ajax({key: 'get_sponsor'}, function(data){
// 		console.log(data);
// 	});
// }



function Money () {

	this.user = new User();
}


// 添加赞助
Money.prototype.add = function ( value, callback ) {
	value = value || {};
	ajax({
		_: 'add_sponsor',
		token: value.token,
		title: value.title,
		price: value.price,
		number: value.number
	}, function(data){
		callback ? callback(data) : null;
	});
}


// 修改赞助广告语
Money.prototype.update = function ( value, callback ) {
	value = value || {};
	ajax({
		_: 'update_sponsor_title',
		sid: value.sid,
		title: value.title
	}, function(data){
		callback ? callback(data) : null;
	});
}


// 获取全部赞助
Money.prototype.getAll = function ( callback ) {
	ajax('get_sponsor', function(data){
		callback ? callback(data): null;
	});
}


// 选择兑换
Money.prototype.setChange = function ( value, callback ) {
	value = value || {};
	ajax({
		_: 'add_user_change',
		uid: value.uid,
		sid: value.sid,
		mid: value.mid
	}, function(data){
		callback ? callback(data): null;
	});
}


/*
*  赞助编辑界面提示
*
*  @param {string} value = 需要提示的内容
*  @param {number} time = 提示显示时长，选填
*  @public  
*/
Money.prototype.tipEdit = function ( value, time ) {
	time = time || 3000;
	var el = $('#supportMsg'),	
		loop = el.data('loop');
	el.css({ display: 'inline-block' }).find('em').html(value);
	clearTimeout(loop);
	loop = setTimeout(function(){ el.hide(); }, time);
	el.data('loop', loop);
}


/*
*  兑换提示
*
*  @param {string} value = 需要提示的内容
*  @param {number} time = 提示显示时长，选填
*  @public  
*/
Money.prototype.tipChange = function ( value, time ) {
	time = time || 3000;
	var el = $('#supportMsg'),	
		loop = el.data('loop');
	el.css({ display: 'inline-block' }).find('em').html(value);
	clearTimeout(loop);
	loop = setTimeout(function(){ el.hide(); }, time);
	el.data('loop', loop);
}


/*
*  添加赞助到页面
*
*  @param {object|array} value = 需要提示的内容
*  @public  
*/
Money.prototype.inserSupporHtml = function ( value, token ) {
	var array = [],
		that = this;
	if ( $.type(value) == 'object' ) {
		array.push(value);
	}
	if ( $.type(value) == 'array' ) {
		array = value;
	}
	var template = $('#supportTemplate'),
		temp = null;
	$(array).each(function(i, value){
		temp = template.clone();
		temp.find('.depict .title span').html(value.title);
		temp.find('.edit .title').val(value.title);
		temp.find('.price').html(value.price);
		temp.find('.number').html(value.number);
		temp.show().removeAttr('id');

		// 兑换
		temp.find('.exchange').click(function(){
			var mode = $('#scoreSelected').val(),
				support = $(this).parents('.support'),
				loading = support.find('.loading'),
				el_tip = support.find('.depict .comm-tip');
			if ( $('.score-item-value').length <= 0 ) {
				tips(el_tip, '请在个人中心“添加兑换方式”');
			} else if ( !mode ) {
				tips(el_tip, '请选择你的兑换方式');
			} else if ( my.info('score') < value.price ) {
				tips(el_tip, '积分不足');
			} else {
				loading.slideDown();
				that.setChange({
					uid: token,
					sid: value.id,
					mid: mode
				}, function(data){
					loading.slideUp();
					tips(el_tip, data.msg);
					if ( data.status ) {
						support.find('.depict .number').html(data.support.number);
						my.setUserScore(-data.support.price);
					}
				})
			}
		});

		// 如果是老板则可以修改名称
		if ( value.boss == token ) {
			temp.find('.depict .title .icon-edit').click(function(){
				$(this).parents('.support').addClass('support-act');
			});
			temp.find('.btn_yes').click(function(){
				var support = $(this).parents('.support'),
					loading = support.find('.loading'),
					newTitle = support.find('.edit .title').val();

				// 如果没有修改则关闭界面，有修改提交
				if ( newTitle == value.title ) {
					support.removeClass('support-act');
				} else {
					loading.slideDown();
					that.update({
						sid: value.id,
						title: newTitle
					}, function(data){
						support.find('.depict .title span').html(newTitle);
						support.removeClass('support-act');
						loading.slideUp();
					});
				}
			});
			temp.find('.btn_no').click(function(){
				$(this).parents('.support').removeClass('support-act');
			});
		} else {
			temp.find('.icon-edit').remove();
			temp.find('.edit').remove();
		}


		template.after(temp);
	});
}



