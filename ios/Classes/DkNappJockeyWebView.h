/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2014 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */
#import "TiBase.h"
#import "TiUIView.h"
#import "Jockey.h"

@interface DkNappJockeyWebView : TiUIView<UIWebViewDelegate> {
    UIWebView *webview;
	NSURL *url;
    
    BOOL debug;
    
}

@property(nonatomic,readonly) id url;

-(void)render;
-(void)sendJockeyData:(id)args;

@end
