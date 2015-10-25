


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
	ajax('./Main/Count/Ajax/ajax.count.php', param, function(data){
		callback ? callback(data) : null;
	});
}


/*
*  添加
*
*  @public  
*/
Count.prototype.add = function ( time, callback ) {
	this.a({
		_: 'add',
		token: my.info('token'),
		duration: time
	}, function(data){
		callback ? callback(data) : null;
	});
}


/*
*  更新
*
*  @public  
*/
Count.prototype.update = function ( time, callback ) {
	this.a({
		_: 'update',
		token: my.info('token'),
		duration: time
	}, function(data){
		callback ? callback(data) : null;
	});
}


/*
*  获取冠军
*
*  @public  
*/
Count.prototype.get = function ( callback ) {
	this.a({_: 'get'}, function(data){
		callback ? callback(data) : null;
	});
}


/*
*  获取自己的
*
*  @public  
*/
Count.prototype.getOwn = function ( callback ) {
	this.a({
		_: 'get_own',
		token: my.info('token')
	}, function(data){
		callback ? callback(data) : null;
	});
}


/*
*  获取列表
*
*  @public  
*/
Count.prototype.list = function ( callback ) {
	this.a({_: 'get_list'}, function(data){
		callback ? callback(data) : null;
	});
}


