
// 获取赞助且呈现到页面
function getSuport () {
	ajax({key: 'get_sponsor'}, function(data){
		console.log(data);
	});
}

