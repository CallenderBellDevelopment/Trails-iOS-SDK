//
//  TRSRequestBuilder.m
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 16/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import "TRSRequestBuilder.h"

@implementation TRSRequestBuilder

#pragma mark - User

+ (NSString *)buildLogin {
    return [NSString stringWithFormat:@"%@%@", [self buildAPIUrl], API_USER_LOGIN];
}

+ (NSString *)buildGetAllUsers {
    return [NSString stringWithFormat:@"%@%@", [self buildAPIUrl], API_USER_GET_ALL];
}

+ (NSString *)buildCheckLoginStatus {
    return [NSString stringWithFormat:@"%@%@", [self buildAPIUrl], API_USER_CHECK_LOGIN];
}

#pragma mark - Track

+ (NSString *)buildGetAllTracks {
    return [NSString stringWithFormat:@"%@%@", [self buildAPIUrl], API_TRACK_GET_ALL];
}

+ (NSString *)buildPlayback:(long)trackId {
    return [NSString stringWithFormat:@"%@%@?trackId=%li", [self buildAPIUrl], API_TRACK_PLAY, trackId];
}

#pragma mark - API url

+ (NSString *)buildAPIUrl {
    return [NSString stringWithFormat:@"%@/%@", API_APP_URL, API_APP_API_URL];
}

@end
