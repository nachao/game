

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