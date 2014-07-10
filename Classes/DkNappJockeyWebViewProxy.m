/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2014 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
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
