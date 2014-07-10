//
//  TiUIWebViewProxy+Extend.m
//  NappJockey
//
//  Created by Mads Møller on 16/6/14.
//
//

#import "TiUIWebViewProxy+Extend.h"
#import "TiUIWebView+Extend.h"

@implementation TiUIWebViewProxy (Extend)


# pragma public interface

-(void)sendJockeyData:(id)args {
    TiThreadPerformOnMainThread(^{[(TiUIWebView*)[self view] sendJockeyData:args];}, NO);
}


@end
