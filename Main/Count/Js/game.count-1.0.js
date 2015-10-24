


/*
*  瞎猜游戏
*  说明：方法类型分为：get,set,update,delete，注释：获取本地数据get是去掉的，
*
*  @public  
*/
function Count () {

	this.field_ = null;	// 当前场信息

	this.title_ = '瞎猜';	// 名称


	// 获取用户信息
	this.user_ = new User();

}


/*
*  指定获取数据的文件
*
*  @public  
*/
Count.prototype.a = function ( param, callback ) {
	ajax('./ajax/ajax.count.php', param, function(data){
		callback ? callback(data) : null;
	});
}


/*
*  添加
*
*  @public  
*/
Count.prototype.add = function ( time ) {
	this.a({
		_: 'add',
		token: my.info('token'),
		value: time
	}, function(data){
		console.log(data);
	});
}


/*
*  获取
*
*  @public  
*/
Count.prototype.get = function ( value ) {
	this.a({_: 'get'}, function(data){
		console.log(data);
	});
}


