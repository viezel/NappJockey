/**
 * Module developed by Napp
 * Author Mads Møller
 * www.napp.dk
 *
 * by ryugoo
 */

#import "TiUIWebView+Extend.h"
#import "TiUtils.h"
#import <objc/runtime.h>
#import "Jockey.h"

@implementation TiUIWebView (Extend)


- (void)sendJockeyData:(id)args
{
    NSDictionary *payload = @{@"data": [args objectAtIndex:1]};
    [Jockey send:[TiUtils stringValue:[args objectAtIndex:0]] withPayload:[args objectAtIndex:1] toWebView:webview];
}



#pragma mark WebView Delegate
/*
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    // USING JOCKEY
    if ( [[[request URL] scheme] isEqualToString:@"jockey"] )
    {
        NSString *query = [[request URL] query];
        NSString *jsonString = [query stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        
        NSError *error;
        NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData: [jsonString dataUsingEncoding:NSUTF8StringEncoding]
                                                             options: NSJSONReadingMutableContainers
                                                               error: &error];
        
        NSString *eventName = [JSON objectForKey:@"type"];
        
        // send event
        if ([self.proxy _hasListeners:eventName]) {
            NSDictionary *event = @{ @"payload": [JSON objectForKey:@"payload"] };
            [self.proxy fireEvent:eventName withObject:event];
        }
        return NO;
    }
    
	return YES;
}
*/


@end