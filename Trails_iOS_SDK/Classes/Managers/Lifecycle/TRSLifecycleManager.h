//
//  TRSLifecycleManager.h
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 16/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRSLifecycleManager : NSObject

#pragma mark - User settings

+ (TRSUser *)user;
+ (void)setUser:(TRSUser *)user;
+ (BOOL)isLoggedIn;

#pragma mark - Device token settings

+ (NSString *)token;
+ (void)setToken:(NSString *)token;

#pragma mark - App lifecycle

+ (void)applicationWillResignActive;
+ (void)applicationDidBecomeActive;

@end
