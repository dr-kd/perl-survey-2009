//Simply clear field on click and re-assign default value if nothing was typed
//I like this "feature", makes the interface a bit more usable without the hassle for the coder ;)
$.fn.clearField = function() {
    return this.focus(function() {
        if( this.value == this.defaultValue ) {
            this.value = "";
        }
    }).blur(function() {
        if( !this.value.length ) {
            this.value = this.defaultValue;
        }
    });
};	

$().ready(function() {
    
    //Change this to the ID of the country input you want to be autocompleted
    //make sure to update the CSS for this ID as well
    var ac_country = ".ac_country";
    
    //options are the same as the JQuery Autocomplete plugin
    $(ac_country).autocomplete(countries, {
	minChars: 2,
	width: 320,
	matchContains: true,
	scroll: true,
	max:0,
	formatItem: function(row, i, max, term) {
	    return row.name;
	},
	formatResult: function(row) {
	    return row.name;
	},
	formatMatch: function(row, i, max) {
	    return row.name;
	}
    });
    
    $(ac_country).after($(ac_country).clone().attr('value','').attr('type', 'hidden').attr('id', $(ac_country).attr('id') + '_hidden'));
    $(ac_country).removeAttr('name', '').clearField();
    $(ac_country).result(function(event, data, formatted) {
	if(data) {
	    $(ac_country + '_hidden').val(data.code.toLowerCase());
	}
    });

});
