//
//  TRSPlaybackRequestBuilder.h
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 19/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRSPlaybackRequestBuilder : NSObject

+ (NSString *)buildPlaybackUrl:(long)trackId;

@end
