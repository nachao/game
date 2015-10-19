

// 获取后台数据
function ajax ( param, callback ) {
	$.ajax({ 
		type: "POST", 
		url: './ajax/comm.php', 
		contentType:"application/json",
		dataType:"json",
		data: JSON.stringify(param),
		success: function(msg){
			callback ? callback(msg, param) : null;
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
