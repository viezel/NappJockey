/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "DkNappJockeyModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#import "TiApp.h"
#import "NappUserAgent.h"

@implementation DkNappJockeyModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"91b2148d-eafb-4296-bec0-47c5df696482";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"dk.napp.jockey";
}

#pragma mark Lifecycle

-(void)startup
{
	[super startup];
}

-(void)shutdown:(id)sender
{
	[super shutdown:sender];
}

#pragma mark Cleanup 

-(void)dealloc
{
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	[super didReceiveMemoryWarning:notification];
}

#pragma Public APIs

-(void)appendUserAgent:(id)value
{
    // important to use ENSURE_SINGLE_ARG in order to get the correct NSString from Titanium
    ENSURE_SINGLE_ARG(value, NSString);

    TiThreadPerformOnMainThread(^{
        UIWebView* webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
        NSString* userAgent = [webView stringByEvaluatingJavaScriptFromString:@"navigator.userAgent"];
        
        NSString* newValue = [TiUtils stringValue:value];
        
        // append it
        NSString* newUserAgent = [NSString stringWithFormat:@"%@ %@", userAgent, newValue];
        
        // update the user agent globally
        NSDictionary *dictionnary = [[NSDictionary alloc] initWithObjectsAndKeys:newUserAgent, @"UserAgent", nil];
        [[NSUserDefaults standardUserDefaults] registerDefaults:dictionnary];
        
        // clean up
        [webView release];
        
    }, YES);
}


-(void)setWebViewUserAgent:(id)value
{
    // important to use ENSURE_SINGLE_ARG in order to get the correct NSString from Titanium
    ENSURE_SINGLE_ARG(value, NSString);
    
    // use our user Agent generator
   // NappUserAgent *generator = [[NappUserAgent alloc] init];
   // NSString *newUserAgent = [generator generateUserAgentString:[TiUtils stringValue:value]];
    
    // update the user agent globally
    NSDictionary *dictionnary = [[NSDictionary alloc] initWithObjectsAndKeys:[TiUtils stringValue:value], @"UserAgent", nil];
    [[NSUserDefaults standardUserDefaults] registerDefaults:dictionnary];
    
    // clean up
    [dictionnary release];
   // [generator release];
}




@end
