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


@end
