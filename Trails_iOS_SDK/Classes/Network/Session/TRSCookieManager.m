//
//  TRSCookieManager.m
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 16/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import "TRSCookieManager.h"

@implementation TRSCookieManager

+ (void)saveCookies {
    NSMutableArray *cookieArray = [[NSMutableArray alloc] init];
    
    for (NSHTTPCookie *cookie in [[NSHTTPCookieStorage sharedHTTPCookieStorage] cookies]) {
        [cookieArray addObject:cookie.name];
        
        NSMutableDictionary *cookieProperties = [NSMutableDictionary dictionary];
        [cookieProperties setObject:cookie.name forKey:NSHTTPCookieName];
        [cookieProperties setObject:cookie.value forKey:NSHTTPCookieValue];
        [cookieProperties setObject:cookie.domain forKey:NSHTTPCookieDomain];
        [cookieProperties setObject:cookie.path forKey:NSHTTPCookiePath];
        [cookieProperties setObject:[NSNumber numberWithLong:cookie.version] forKey:NSHTTPCookieVersion];
        
        [cookieProperties setObject:[[NSDate date] dateByAddingTimeInterval:2629743] forKey:NSHTTPCookieExpires];
        
        [[NSUserDefaults standardUserDefaults] setValue:cookieProperties forKey:cookie.name];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    
    [[NSUserDefaults standardUserDefaults] setValue:cookieArray forKey:@"cookieArray"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)loadCookies {
    NSMutableArray* cookieDictionary = [[NSUserDefaults standardUserDefaults] valueForKey:@"cookieArray"];
    
    for (int i=0; i < cookieDictionary.count; i++) {
        NSMutableDictionary* cookieDictionary1 = [[NSUserDefaults standardUserDefaults] valueForKey:[cookieDictionary objectAtIndex:i]];
        NSHTTPCookie *cookie = [NSHTTPCookie cookieWithProperties:cookieDictionary1];
        [[NSHTTPCookieStorage sharedHTTPCookieStorage] setCookie:cookie];
    }
}

@end
