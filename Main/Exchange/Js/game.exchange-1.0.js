
/*
*  用户
*  说明：方法类型分为：get,set,update,delete，注释：获取本地数据get是去掉的，
*
*  @public  
*/
function Exchange () {}


/*
*  每分钟刷新一次用户登录缓存钥匙
*
*  @public  
*/
Exchange.prototype.a = function ( param, callback ) {
	ajax('./Main/Exchange/Ajax/exchange.php', param, function(data){
		callback ? callback(data) : null;
	});
}


/*
*  设置
*
*  @param {object| string|number|null} = value 需要替换的参数
*  @public  
*/
Exchange.prototype.set = function ( key, callback ) {
	this.a({ _: 'set', key: key }, function(date){
		callback ? callback(date) : null;
	});
}


/*
*  设置
*
*  @param {object| string|number|null} = value 需要替换的参数
*  @public  
*/
Exchange.prototype.cancel = function ( key, callback ) {
	this.a({ _: 'cancel', key: key }, function(date){
		callback ? callback(date) : null;
	});
}


/*
*  获取
*
*  @public  
*/
Exchange.prototype.get = function ( callback ) {
	this.a({ _: 'get' }, function(date){
		callback ? callback(date) : null;
	});
}
