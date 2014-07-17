# NappJockey

Send data between WebView and Titanium app. 

It facilitate communication between the titanium app and HTML webpage running remotely on a webserver. Inspired by: https://github.com/tcoulter/jockeyjs

## Usage

To use the module, do the following:

	var NappJockey = require('dk.napp.jockey');
	var webview = NappJockey.createWebView({	
		url:"http://path-to-your-website.com"
	});
	
	webview.addEventListener('my-custom-event-name',function(e) {
	    Ti.API.info(e);
	});
	
	webview.sendJockeyData("color-change", {
		color: "#333333"
	});
	

## Reference


### createWebView

Creates a special webview that can handle Jockey events.

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


## Quick Start

Have a look in the example folder. There you will find a HTML webpage and two javascript files. The html and javascript should be pretty self explanatory.


## Author

**Mads Møller**  
web: http://www.napp.dk  
email: mm@napp.dk  
twitter: @nappdev  


## License

    Copyright (c) 2010-2014 Mads Møller

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.
	

