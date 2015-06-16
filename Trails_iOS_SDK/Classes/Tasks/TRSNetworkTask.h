//
//  TRSNetworkTask.h
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 16/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRSNetworkTask : NSObject

@property (nonatomic, strong) void (^sBlock)(TRSResponseObject *);
@property (nonatomic, strong) void (^cBlock)(TRSResponseObject *);
@property (nonatomic, strong) void (^fBlock)(TRSResponseObject *error);

- (void)executePostWithUrl:(NSString *)url parameters:(NSDictionary *)parameters cachePolicy:(NSURLRequestCachePolicy)cachePolicy success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

- (void)parseJsonSuccess:(NSDictionary *)json;
- (void)parseJsonCacheSuccess:(NSDictionary *)json;
- (void)parseJsonError:(NSInteger)statusCode;
- (id)parseJsonSuccessObject:(NSDictionary *)json;

@end
