/**
 * Module developed by Napp ApS
 * www.napp.dk
 * Mads Møller
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */

#import "DkNappJockeyWebViewProxy.h"
#import "DkNappJockeyWebView.h"
#import "TiUtils.h"
#import "Jockey.h"

@implementation DkNappJockeyWebViewProxy


-(id)init
{
    [(DkNappJockeyWebView*)[self view] render];
	return [super init];
}


-(void)sendJockeyData:(id)args
{
    TiThreadPerformOnMainThread(^{[(DkNappJockeyWebView*)[self view] sendJockeyData:args];}, NO);
}


-(void)goBack:(id)args
{
	TiThreadPerformOnMainThread(^{[(DkNappJockeyWebView*)[self view] goBack];}, NO);
}

-(void)goForward:(id)args
{
	TiThreadPerformOnMainThread(^{[(DkNappJockeyWebView*)[self view] goForward];}, NO);
}

-(void)stopLoading:(id)args
{
	TiThreadPerformOnMainThread(^{[(DkNappJockeyWebView*)[self view] stopLoading];}, NO);
}

-(void)reload:(id)args
{
	TiThreadPerformOnMainThread(^{[(DkNappJockeyWebView*)[self view] reload];}, NO);
}

-(id)canGoBack:(id)args
{
	if ([self viewAttached])
	{
		__block BOOL result;
		TiThreadPerformOnMainThread(^{result = [(DkNappJockeyWebView*)[self view] canGoBack];}, YES);
		return NUMBOOL(result);
	}
	return NUMBOOL(NO);
}

-(id)canGoForward:(id)args
{
	if ([self viewAttached])
	{
		__block BOOL result;
		TiThreadPerformOnMainThread(^{result = [(DkNappJockeyWebView*)[self view] canGoForward];}, YES);
		return NUMBOOL(result);
	}
	return NUMBOOL(NO);
}



@end
