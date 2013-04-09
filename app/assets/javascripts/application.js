// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require underscore
//= require backbone
//= require backbone_rails_sync
//= require backbone_datalink
//= require backbone/skara
//= require_tree .
function debouncer( func , timeout ) {
var timeoutID , timeout = timeout || 200;
return function () {
var scope = this , args = arguments;
clearTimeout( timeoutID );
timeoutID = setTimeout( function () {
func.apply( scope , Array.prototype.slice.call( args ) );
} , timeout );
}
}
 
 
$( window ).bind("load resize", debouncer( function ( e ) {
	var li_width = $('.mainnav > li:first').width()
	var lis = $('.mainnav > li > a')
	lis.css("letter-spacing", li_width/12 - 10)
	} ) );