//
//  TRSPlaybackRequestBuilder.m
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 19/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import "TRSPlaybackRequestBuilder.h"

@implementation TRSPlaybackRequestBuilder

+ (NSString *)buildPlaybackUrl:(long)trackId {
    return [TRSRequestBuilder buildPlayback:trackId];
}

@end
