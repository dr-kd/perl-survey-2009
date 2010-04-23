/* jQuery Simple Multi-Select plugin 0.9
 *
 * Copyright (c) 2009 Ethan Miller
 *
 * http://ethanmiller.name/notes/jquery_simplemultiselect/
 *
 * Dual licensed under the MIT and GPL licenses:
 *   http://www.opensource.org/licenses/mit-license.php
 *   http://www.gnu.org/licenses/gpl.html
 *
 */

(function($){
    $.fn.simpleMultiSelect = function(options){
        var settings = $.extend({
		highlight : '#CCE',
		border : '#777',
		width : 350,
		height : 150,
		classesOnly : false,
		container : 'sms-container',
		pseudoSelect : 'sms-pseudo-select',
		selected : 'sms-selected',
		unselected : 'sms-unselected'
	    }, options);
        return this.each(function(){
            // wrapping select in a div so that the select and 
	    // pseudo select will be siblings
            $(this).wrap('<div class="' + settings.container + '"></div>');
            var divselect = $('<div class="' + settings.pseudoSelect + '"></div>');
            $('option', this).each(function(){
                var op = $(this);
                var dv = $('<div/>').text(op.text()).data('selected', op.attr('selected'));
		// highlight pseudo option on load
		toggleSelected(dv, settings);
                dv.click(function(){
                    // we still have references to op and dv here ...
                    if(op.attr('selected')){
                        //de-select
                        op.removeAttr('selected');
			dv.data('selected', false);
                        toggleSelected(dv, settings);
                    }else{
                        //select
                        op.attr('selected', true);
			dv.data('selected', true);
                        toggleSelected(dv, settings);
                    }
                });
                divselect.append(dv);
            });
            if(!settings.classesOnly){
                divselect.css({
                    width : settings.width,
                    height : settings.height,
                    cursor : "default",
                    overflow : "auto",
                    border : "1px solid " + settings.border
		});
            }
            $(this).after(divselect).hide();
        });
    };
    $.fn.smsNone = function(){
        return this.each(function(){
            siblingDivSet(this).each(function(){
                var psop = $(this);
		if(psop.data('selected')){
                    psop.click();
                }
            });
        });
    };
    $.fn.smsAll = function(){
        return this.each(function(){
            siblingDivSet(this).each(function(){
                var psop = $(this);
		if(!psop.data('selected')){
                    psop.click();
                }
            });
        });
    }
    function toggleSelected(elem, config){
	var sel = elem.data('selected');
        if(config.classesOnly){
            elem.toggleClass(config.selected, sel);
            elem.toggleClass(config.unselected, !sel);
        }else{
            if(sel){
                elem.css({'background-color' : config.highlight});
            }else{
                elem.css({'background-color' : 'transparent'});
            }
        }
    }
    function siblingDivSet(sel){
        // expects a select object, return jquery set
        return $(sel).siblings('div').children('div');
    }
})(jQuery);
