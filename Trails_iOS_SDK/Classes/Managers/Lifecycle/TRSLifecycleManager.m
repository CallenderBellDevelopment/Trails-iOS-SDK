//
//  TRSLifecycleManager.m
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 16/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import "TRSLifecycleManager.h"

@implementation TRSLifecycleManager

#pragma mark - User settings

+ (TRSUser *)user {
    return [TRSSettings getInstance].user;
}

+ (void)setUser:(TRSUser *)user {
    [TRSSettings getInstance].user = user;
}

+ (BOOL)isLoggedIn {
    return [TRSSettings getInstance].isLoggedIn;
}

#pragma mark - Device token settings

+ (NSString *)token {
    return [TRSSettings getInstance].token;
}

+ (void)setToken:(NSString *)token {
    return [[TRSSettings getInstance] setToken:token];
}

#pragma mark - App lifecycle

+ (void)applicationWillResignActive {
    [TRSCookieManager saveCookies];
}

+ (void)applicationDidBecomeActive {
    [TRSCookieManager loadCookies];
}

@end
