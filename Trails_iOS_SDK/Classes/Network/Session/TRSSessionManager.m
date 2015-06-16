//
//  TRSSessionManager.m
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 16/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import "TRSSessionManager.h"

@implementation TRSSessionManager

static TRSSessionManager *manager;

+ (TRSSessionManager *)manager {
    @synchronized(self) {
        static dispatch_once_t pred;
        dispatch_once(&pred, ^{
            manager = [[self alloc] initWithBaseURL:[NSURL URLWithString:API_APP_URL]];
            
            manager.responseSerializer = [AFJSONResponseSerializer serializer];
            manager.requestSerializer = [AFJSONRequestSerializer new];
        });
    }
    
    return manager;
}

@end
