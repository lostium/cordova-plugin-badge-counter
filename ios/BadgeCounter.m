//
//  BadgeCounter.m
//
//  Created by Lostium Project on 2013-12-31.
//

#import "BadgeCounter.h"
#import <Cordova/CDV.h>

@implementation BadgeCounter

- (void) get : (CDVInvokedUrlCommand*) command {
    int value = [[UIApplication sharedApplication] applicationIconBadgeNumber];
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus : CDVCommandStatus_OK messageAsInt : value];
    [self.commandDelegate sendPluginResult : pluginResult callbackId : command.callbackId];
}

-(void) set : (CDVInvokedUrlCommand*) command {
    int value = [[command.arguments objectAtIndex : 0] intValue];
    [[UIApplication sharedApplication] setApplicationIconBadgeNumber : value];

    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus : CDVCommandStatus_OK messageAsInt : value];
    [self.commandDelegate sendPluginResult : pluginResult callbackId : command.callbackId];
}


@end

