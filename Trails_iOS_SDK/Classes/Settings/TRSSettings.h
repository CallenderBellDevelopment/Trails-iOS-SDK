//
//  TRSSettings.h
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 16/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRSUser.h"

@interface TRSSettings : NSObject

@property (nonatomic, strong) TRSUser *user;

+ (TRSSettings *)getInstance;

- (BOOL)isLoggedIn;

- (NSString *)token;
- (void)setToken:(NSString *)token;

@end
