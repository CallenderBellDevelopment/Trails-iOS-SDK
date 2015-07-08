//
//  TRSLoginTask.m
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 17/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import "TRSLoginTask.h"

@implementation TRSLoginTask

- (void)loginWithUsername:(NSString *)username password:(NSString *)password successBlock:(void (^)(TRSResponseObject *))successBlock failureBlock:(void (^)(TRSResponseObject *))failureBlock {
    self.sBlock = successBlock;
    self.fBlock = failureBlock;
    
    NSString *string = [TRSRequestBuilder buildLogin];
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:@{JSON_REQ_USER_USERNAME:username,
                                                                                  JSON_REQ_USER_PASSWORD:password}];
    
    [self executePostWithUrl:string parameters:params cachePolicy:NSURLRequestReloadIgnoringLocalCacheData success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSDictionary *responseJson = responseObject;
        
        [self parseJsonSuccess:responseJson];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSHTTPURLResponse *response = operation.response;
        NSInteger statuscode = response.statusCode;
        
        [self parseJsonError:statuscode];
    }];
}

- (id)parseJsonSuccessObject:(NSDictionary *)json {
    TRSUser *p = [[TRSUser alloc] initFromJson:json[JSON_RESP_USER_USER]];
    
    [[TRSSettings getInstance] setUser:p];
    
    return p;
}

@end
