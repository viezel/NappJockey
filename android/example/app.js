var win = Ti.UI.createWindow({
    backgroundColor: 'white'
});
win.open();



var NappJockey = require('dk.napp.jockey');

// optinal set the user agent string before creating the webview.
NappJockey.appendUserAgent("my custom string");

// webview
var webview = NappJockey.createWebView({
    top: 70,
    url: "http://yourwebsite.com/jockeyjs/index.html",
});


webview.addEventListener('toggle-fullscreen', function(e) {
    Ti.API.info('toggle-fullscreen');
    Ti.API.info(e);
    Ti.API.info(JSON.stringify(e));
    alert("You clicked : toggle-fullscreen");
});

webview.addEventListener('toggle-fullscreen-with-callback', function(e) {
    Ti.API.info('toggle-fullscreen-with-callback');
    Ti.API.info(e);
    Ti.API.info(JSON.stringify(e));
    alert("You clicked : toggle-fullscreen-with-callback");
});

win.add(webview);

var btn = Ti.UI.createButton({
    title: "Send event to webpage",
    top: "20dp",
    height: "40dp"
});
btn.addEventListener("click", function() {

    // send event with payload
    webview.sendJockeyData("color-change", {
        color: "#CB4437"
    });
});
win.add(btn);