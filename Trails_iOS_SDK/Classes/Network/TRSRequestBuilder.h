//
//  TRSRequestBuilder.h
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 16/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRSRequestBuilder : NSObject

+ (NSString *)buildLogin;
+ (NSString *)buildGetAllUsers;
+ (NSString *)buildCheckLoginStatus;

+ (NSString *)buildGetAllTracks;
+ (NSString *)buildPlayback:(long)trackId;

@end
