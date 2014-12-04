/*global $*/
var MM = MM || {};
$.fn.mmClassList = function () {
	'use strict';
	var classes =  this.attr('class') || '';
	return classes.split(/\s+/);
};
MM.showIOSGuide = function (name) {
	'use strict';
	var classForGuide = 'show-' + name + '-guide',
		element = $('body'),
		current = element.mmClassList();

	current.forEach(function (className) {
		if (element && element.removeClass && className !== classForGuide && className.match(/^show-.*-guide$/)) {
			element.removeClass(className);
		}
	});
	if (element && element.addClass) {
		element.addClass(classForGuide);
	}

};


