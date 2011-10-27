/*
 * jQuery Floating Layer Plugin 1.0
 *
 * http://renjin.blogspot.com/2009/07/jquery-floating-layer-plugin.html
 * Author: renjin
 * Date: 2009-7-19
 *
 * Dual licensed under the MIT and GPL licenses:
 *  http://www.opensource.org/licenses/mit-license.php
 *  http://www.gnu.org/licenses/gpl.html
 */
;(function($) {
    $.floatLayer = {
        defaults: {
            position: { x: 'left', y: 'center' },
            duration: 500,
            easing: 'swing',
            fixed: false
        }
    };

    $.extend($.support, { positionFixed: false });
    $(document).ready(function() {
        var element = $('<div></div>').css({
            'position': 'fixed',
            'left': '0px',
            'top': '0px'
        })
        .attr('id', '_divFixedPosition')
        .hide()
        .appendTo('body')[0];
        $.support.positionFixed = element.offsetLeft == null || isNaN(element.offsetLeft) || element.offsetLeft != 0 ? false : true;
        $(element).remove();
    });

    $.fn.extend({
        makeFloating: function(options) {
            return this.each(function() {
                options = $.extend({}, $.floatLayer.defaults, options);
                settings(this, options);
                $(this).css('position', options.fixed && $.support.positionFixed ? 'fixed' : 'absolute')
                .show();

                this.isFloating = true;
                initialize.call(this);

                var me = this;
                $(window)
                .resize(function() {
                    initialize.call(me);
                })
                .scroll(function() {
                    doFloat.call(me);
                });
            });
        },
        floatingPosition: function(position) {
            return this.each(function() {
                if (this.isFloating === true) {
                    settings(this, $.extend({}, settings(this), { position: position }));
                    initialize.call(this);
                }
            });
        }        
    });

    function initialize() {
        settings(this, $.extend({}, settings(this), { target: computePosition(this) }));
        doFloat.call(this);
    }

    function doFloat() {
        var position = settings(this).target;
        var view = viewport();
        var x = position.x + view.x, y = position.y + view.y;
        if (!settings(this).fixed) {
            var duration = settings(this).duration;
            var easing = settings(this).easing;
            $(this).animate(
                { left: x + 'px', top: y + 'px' },
                { duration: duration, queue: false, easing: easing }
            );
        } else if (!$.support.positionFixed) {
            $(this).css({
                left: x + 'px',
                top: y + 'px'
            });
        } else {
            $(this).css({
                left: position.x + 'px',
                top: position.y + 'px'
            });
        }
    }

    function computePosition(element) {
        var view = viewport();
        var x = settings(element).position.x, y = settings(element).position.y;
        var elementWidth = parseInt($(element).outerWidth(true)), elementHeight = parseInt($(element).outerHeight(true));

        if (/^right$/i.test(x)) {
            x = view.x + view.width - elementWidth;
        } else if (/^center$/i.test(x)) {
            x = view.x + (view.width - elementWidth) / 2;
        } else if (/^left$/i.test(x)) {
            x = 0;
        }

        if (/^top$/i.test(y)) {
            y = 0;
        } else if (/^center$/i.test(y)) {
            y = view.y + (view.height - elementHeight) / 2;
        } else if (/^bottom$/i.test(y)) {
            y = view.y + view.height - elementHeight;
        }

        return {
            x: isNaN(x) ? 0 : x,
            y: isNaN(y) ? 0 : y
        };
    }

    function settings(element, value) {
        return value === undefined ? $.data(element, 'settings') :
            $.data(element, 'settings', value);
    }

    function viewport() {
        return {
            x: $(document).scrollLeft(),
            y: $(document).scrollTop(),
            width: $(window).width(),
            height: $(window).height()
        };
    }
})(jQuery);