//
//  BadgeCounter.h
//
//  Created by Lostium Project on 2013-12-31.
//
//

 #import <Cordova/CDV.h>

@interface BadgeCounter : CDVPlugin 

- (void)get:(CDVInvokedUrlCommand*)command;
- (void)set:(CDVInvokedUrlCommand*)command;

@end
