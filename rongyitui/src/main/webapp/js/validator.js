/**
 * 校验手机号码：必须以数字开头，除数字外，可含有“-”
 */
function isMobil(str) {
	var pattern = /^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/;
	if (pattern.test(str)) {
		return true;
	}
	return false;
}

/**
 * 由数字、26个英文字母或者下划线组成
 * @param str
 * @returns {Boolean}
 */
function isName(str) {
	var pattern = /^\w+$[6,12]/;
	if (pattern.test(str)) {
		return true;
	}
	return false;
}

/**
 * 钱。格式：xxx.xx x必为数字<br/>
 * 只能输入有两位小数的正实数
 * @param str
 * @returns {Boolean}
 */
function isMoney(str) {
	var pattern = /^[0-9]+(.[0-9]{2})?$/;
	if (pattern.test(str)) {
		return true;
	}
	return false;
}

/**
 * 正整数
 * @param str
 * @returns {Boolean}
 */
function isNumber(str) {
	var pattern = /^\+?[1-9][0-9]*$/;
	if (pattern.test(str)) {
		return true;
	}
	return false;
}