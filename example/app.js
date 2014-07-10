
var win = Ti.UI.createWindow({
	backgroundColor:'white'
});
win.open();

var NappJockey = require('dk.napp.jockey');

NappJockey.appendUserAgent("my custom string");

// webview
var webview = NappJockey.createWebView({	
	top: 70,
	debug:true,
	//url:"http://www.whatsmyuseragent.com",
	url:"http://angular.dev/test.html"
});

webview.addEventListener('toggle-fullscreen',function(e) {
	Ti.API.info( 'toggle-fullscreen' );
    Ti.API.info( e );
});

webview.addEventListener('toggle-fullscreen-with-callback',function(e) {
	Ti.API.info( 'toggle-fullscreen-with-callback' );
    Ti.API.info( e );
});

win.add(webview);

var btn = Ti.UI.createButton({
	title:"send event",
	top:20,
	height:"40dp"
});
btn.addEventListener("click", function(){
	webview.sendJockeyData("color-change", {
		color: "#333333"
	});
});
win.add(btn);

