/**
 * Module developed by Napp ApS
 * www.napp.dk
 * Mads Møller
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
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
