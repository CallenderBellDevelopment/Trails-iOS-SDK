//
//  TRSGetAllTracksTask.m
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 19/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import "TRSGetAllTracksTask.h"

@implementation TRSGetAllTracksTask

- (void)getAllTracksWithSuccessBlock:(void (^)(TRSResponseObject *))successBlock cacheBlock:(void (^)(TRSResponseObject *))cacheBlock failureBlock:(void (^)(TRSResponseObject *))failureBlock {
    self.sBlock = successBlock;
    self.fBlock = failureBlock;
    self.cBlock = cacheBlock;
    
    NSString *string = [TRSRequestBuilder buildGetAllTracks];
    
    // Define web request.
    void (^simpleBlock)(void) = ^{
        [self executePostWithUrl:string parameters:nil cachePolicy:NSURLRequestReloadIgnoringLocalCacheData success:^(AFHTTPRequestOperation *operation, id responseObject) {
            NSDictionary *responseJson = responseObject;
            
            [self parseJsonSuccess:responseJson];
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSHTTPURLResponse *response = operation.response;
            NSInteger statuscode = response.statusCode;
            
            [self parseJsonError:statuscode];
        }];
    };
    
    if (self.isStart) {
        [self executePostWithUrl:string parameters:nil cachePolicy:NSURLRequestReturnCacheDataDontLoad success:^(AFHTTPRequestOperation *operation, id responseObject) {
            NSDictionary *responseJson = responseObject;
            
            [self parseJsonCacheSuccess:responseJson];
            
            // Load second request.
            simpleBlock();
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            simpleBlock();
        }];
    }
    else
        simpleBlock();
}

- (id)parseJsonSuccessObject:(NSDictionary *)json {
    NSArray *jsonArray = json[JSON_RESP_GENERIC_ITEMS];
    
    NSMutableArray *items = [NSMutableArray new];
    
    for (NSDictionary *itemJson in jsonArray) {
        TRSTrack *n = [[TRSTrack alloc] initFromJson:itemJson];
        
        [items addObject:n];
    }
    
    return items;
}

@end
