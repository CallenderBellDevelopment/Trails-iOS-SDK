//
//  TRSTrackManager.m
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 19/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import "TRSTrackManager.h"
#import "TRSGetAllTracksTask.h"

@implementation TRSTrackManager

+ (void)getAllTracks:(BOOL)useCache successBlock:(void (^)(TRSResponseObject *))successBlock cacheBlock:(void (^)(TRSResponseObject *))cacheBlock failureBlock:(void (^)(TRSResponseObject *))failureBlock {
    TRSGetAllTracksTask *task = [TRSGetAllTracksTask new];
    task.isStart = useCache;
    [task getAllTracksWithSuccessBlock:successBlock cacheBlock:cacheBlock failureBlock:failureBlock];
}

@end
