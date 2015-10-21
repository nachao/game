

// 获取后台数据
function ajax ( url, param, callback ) {
	url = url || './ajax/comm.php';
	var value = { _: param };
	if ( $.type(param) != 'string' ) {
		value = param;
	}
	$.ajax({ 
		type: "POST", 
		url: url, 
		contentType:"application/json",
		dataType:"json",
		data: JSON.stringify(value),
		success: function(data){
			callback ? callback(data, value) : null;
		}
	});
}

//写cookies
function setCookie ( name, value, time ) {
	time = time || 0;
	var exp = new Date();
	exp.setTime(exp.getTime() + time * 1000);
	document.cookie = name + "="+ escape(value) + ";expires=" + exp.toGMTString();
}

// 读取cookies
function getCookie ( name ){
	var arr,
		reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
	if(arr=document.cookie.match(reg))
		return unescape(arr[2]);
	else
		return null;
}

// 去空格
function ntfs ( value ){
	return value.replace(/\s+/g,"");
}

// 显示提示
function tips ( el, value, time ) {
	time = time || 3000;
	if ( el ) {
		var loop = el.data('loop');
		el.css({ display: 'inline-block' }).find('em').html(value);
		clearTimeout(loop);
		loop = setTimeout(function(){ el.hide(); }, time);
		el.data('loop', loop);
		el.hover(function(){
			clearTimeout(loop);
		}, function(){
			clearTimeout(loop);
			loop = setTimeout(function(){ el.hide(); }, time);
			el.data('loop', loop);
		});
	}
}