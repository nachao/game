/**
 *  @ name 数据动态转移
 *  @ date 2015-10-1
 *  @ version 1.0
 *  @ anthor Na Chao
 *  @ depict -
 *		jQ插件
 **/
function nShift ( param ) {

	param = param || {};

	this.param_ = {};

	/*
	*  主要参数
	*  @ type {object<el>}
		**/
	this.param_.source = param.source || null;

	this.param_.target = param.target || null;

	// @ type {string}
	this.param_.number = param.number || null;

	this.param_.point = param.point || null;


	/*
	*  次要参数
	*  @ type {string}
		**/
	this.param_.className = param.className || 'boxs-dot';

	this.param_.color = param.color || 'red';


	/*
	*  扩展参数
	*  @ type {function}
		**/
	this.param_.callback = param.callback || null;


	/*
	*  动画参数
	*  @ type {number}
		**/
	this.param_.totalTime = param.totalTime || 3000;	// 转移总时时间（毫秒）

	this.param_.itemTime = 100;		// 单次点生成间隔时间（毫秒）

	this.param_.moveTime = 500;		// 单次点转移间隔时间（毫秒）

	this.param_.delay = 0;	// 延时执行（毫秒）


	// 初始化
	if ( this.param_.source ) {
		this.param_.source.css({ position: 'relative' });
	}
	if ( this.param_.target ) {
		this.param_.target.css({ position: 'relative' });
	}
}


/*
*  # 执行数据点移动
*  # param {el}
*  # return {el}
*  # private
*/
nShift.prototype._executeMove = function ( aEls, bEl, callback ) {

	var that = this;

	var bSub = that._getChild(bEl),
		el_bTxt = bSub.txt,
		el_bAre = bSub.are,
		bValue = bSub.val;

	var itemNumber = (this.param_.totalTime) / this.param_.itemTime;	// 转移完成所需要的次数

	var aElLen = 0;

	$(aEls).each(function(){

		var aEl = $(this),
			aValue = that._getChild(aEl).val;

		var number = Math.ceil(aValue / itemNumber);	// 单次转移的点数量

		aElLen += aValue;

		var addValue = 0;

		for ( var i = 0; i < itemNumber; i ++ ) {
			if ( addValue <= aValue ) {
				addValue += number;
				go(aEl, number, i);
			}
		}
	});

	// 单个点
	function go ( aEl, number, index ) {
		setTimeout(function(){ 

			var itemNumber = (that.param_.totalTime) / that.param_.itemTime;	// 转移完成所需要的次数

			var itemValue = itemNumber;

			var aSub = that._getChild(aEl),
				el_aTxt = aSub.txt,
				el_aAre = aSub.are,
				aValue = aSub.val - number;

			if ( aValue <= 0 ) {
				aValue = 0;
				number = aSub.val;
			}

			el_aTxt.html(aValue);

			var len = number;
			if ( len > 10 ) {
				len = 10;
			}
			that._setTargetAnimate(
				that._getCreate(el_aAre),
				that._getTargetPosition(el_aAre, el_bAre), function(){

					aElLen -= number;

					bValue = bValue + number;

					el_bTxt.html(bValue);

					if ( aElLen <= 0 ) {
						callback ? callback(that) : null;
					}
				});

		}, that.param_.itemTime * (index + 1));
	}
}


/*
*  # 执行数据点减少
*  # param {el}
*  # return {el}
*  # private
*/
nShift.prototype._executeMinus = function ( els, min, callback ) {

	min = min || 0;

	var that = this;

	var itemNumber = (this.param_.totalTime) / this.param_.itemTime;	// 转移完成所需要的次数

	$(els).each(function(){

		var el = $(this),
			sub = that._getChild(el),
			elTxt = sub.txt,
			elAre = sub.are,
			value = sub.val;

		var number = Math.ceil(value / itemNumber);	// 单次转移的点数量

		var tempValue = value;

		for ( var i =0; i < itemNumber; i++ ) {
			if ( tempValue > min ) {
				tempValue -= number;
				go(el, number, i);
			}
		}
	});

	function go ( el, number, index ) {
		setTimeout(function(){

			var sub = that._getChild(el),
				elAre = sub.are,
				value = sub.val - number;

			if ( value <= min ) {
				value = min;
			}

			if ( value >= min ) {
				that._setDisplay(el, value);

				if ( number > 3 ) {
					number = 3;
				}
				var point = null;
				for ( var i = 0; i < number; i++ ) {
					point = that._getCreate(elAre);
					that._setTargetAnimate(
						point, 
						that._getPointDisappear(point));
				}
				if ( value == min ) {
					callback ? callback(that) : null; 
				}
			}

		}, that.param_.itemTime * (index +1) );
	}
}


/*
*  # 在源区域生成一个点，设置样式，并返回此元素
*  # param {el} el
*  # return {el} dot
*  # private
*/
nShift.prototype._getCreate = function ( el ) {

	var max = 10,
		size = parseInt(Math.random() * max) || max,
		name = this.param_.className;

	el.append('<span></span>');

	return el.find('span:last').css({ 
		width: size, 
		height: size,
		borderRadius: max,
		background: this.param_.color, 
		position: 'absolute',
		left: parseInt(Math.random() * (el.width() - size)),
		top: parseInt(Math.random() * (el.height() - size)),
		display: 'inline-block',
		zIndex: 2,
	});
}


/*
*  # 获取目标位置
*  # param {el} aEl = 当前区域元素
*  # param {el} bEl = 目标区域元素
*  # param {object} style = 目标区域元素
*  # return {object} styleObject
*  # private
*/
nShift.prototype._getTargetPosition = function ( aEl, bEl, style ) {
	style = style || {};

	var left = style.left || 0,
		top = style.top || 0;

	return {
		left: bEl.offset().left - aEl.offset().left + (bEl.width() / 2) + left,
		top: bEl.offset().top - aEl.offset().top + (bEl.height() / 2) + top,
		opacity: 0.1
	};
}


/*
*  # 获取点消失样式
*  # param {el} el = 当前区域元素
*  # return {object} styleObject
*  # private
*/
nShift.prototype._getPointDisappear = function ( el ) {

	var size = el.width(),
		big = size * 2;

	return {
		width: big,
		height: big,
		left: parseInt(el.css('left')) - size,
		top: parseInt(el.css('top')) - size,
		opacity: 0
	};
}


/*
*  # 获取区域子元素
*  # param {el} el
*  # return {object} 
*  # private
*/
nShift.prototype._getChild = function ( el ) {

	if ( !el ) {
		return {};
	}

	var numberEl = el.find(this.param_.number),
		pointEl = el.find(this.param_.point);

	numberEl = !!numberEl.length ? numberEl: el;
	pointEl = !!pointEl.length ? pointEl: el;

	// console.log(numberEl.html());

	return {
		txt: numberEl,
		are: pointEl,
		val: parseInt(numberEl.html()) || 0,
	};
}


/*
*  # 设置区域显示的数值
*  # param {el} el
*  # return {object} 
*  # private
*/
nShift.prototype._setDisplay = function ( el, value ) {
	this._getChild(el).txt.html(value);
}


/*
*  # 移动到目标位置
*  # param {el} el = 点元素
*  # param {object} position = 目标位置样式
*  # return {object} styleObject
*  # private
*/
nShift.prototype._setTargetAnimate = function ( el, position, callback ) {
	return el.animate(position, 500, function(){
		$(this).remove();
		callback ? callback() : null;
	});
}


/*
*  # 移动到目标位置
*  # public
*/
nShift.prototype.move = function ( callback ) {
	callback = callback || this.param_.callback;
	this._executeMove( this.param_.source, this.param_.target, callback);
	return this;
}


/*
*  # 减少到目标的值
*  # public
*/
nShift.prototype.minus = function ( min, callback ) {
	callback = callback || this.param_.callback;
	this._executeMinus( this.param_.target, min, callback);
	return this;
}



/*
*  # 设置参数
*  # public
*/
nShift.prototype.set = function ( param ) {
	if ( $.isPlainObject(param) ) {
		this.param_ = $.extend(this.param_, param);
		// 初始化
		this.param_.source.css({ position: 'relative' });
		this.param_.target.css({ position: 'relative' });
	}
	if ( $.isFunction(param) ) {
		this.param_.callback = param;
	}
	if ( $.type(param) == 'null' ) {
		this.param_.callback = null;
	}
	return this;
}