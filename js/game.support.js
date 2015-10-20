
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
		_: 'get_sponsor',
		token: value.token,
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
Money.prototype.inserSupporHtml = function ( value ) {
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
		temp.find('.depict .title').html(value.title);
		temp.find('.edit .title').val(value.title);
		temp.find('.price').html(value.price);
		temp.find('.number').html(value.number);
		temp.show().removeAttr('id');
		temp.find('.depict .title').click(function(){
			$(this).parents('<div class="support-change"></div>').addClass('support-change-act');
		});
		temp.find('.btn_yes').click(function(){
			var loading = temp.find('.loading').slideDown(),
				title = temp.find('.edit .title').val();
			that.update({
				sid: value.id,
				title: title
			}, function(data){
				temp.find('.depict .title').html(title);
				temp.removeClass('support-change-act');
				loading.slideUp();
			})
		});
		temp.find('.btn_no').click(function(){
			temp.removeClass('support-change-act');
		});

		template.after(temp);
	});
}



