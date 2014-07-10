# NappJockey

Send data between webview and titanium app.

Inspired by: https://github.com/tcoulter/jockeyjs

## Usage

To use the module, do the following:

	var NappJockey = require('dk.napp.jockey');
	var webview = NappJockey.createWebView({	
		top: 70,
		debug:true,
		url:"http://example.com"
	});
	
	webview.addEventListener('my-custom-event-name',function(e) {
	    Ti.API.info(e);
	});
	
	webview.sendJockeyData("color-change", {
		color: "#333333"
	});
	


## Reference


### createWebView

Creates a special webview that can handle Jockey events

### addEventListener

Add the eventlistener to receive data from the website.

	webview.addEventListener('my-custom-event-name',function(e) {
	    Ti.API.info(e);
	});

### sendJockeyData()

Send data from Titanium to your remote website

	webview.sendJockeyData("user", {
		username: "John Doe",
		age: 12,
		foo: {
			bar: 1 
		}
	});
	

### appendUserAgent

Customize the UserAgent globally, so every request has your value.

	NappJockey.appendUserAgent("my custom string");
	

