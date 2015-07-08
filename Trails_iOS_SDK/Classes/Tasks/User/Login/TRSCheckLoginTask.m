//
//  TRSCheckLoginTask.m
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 19/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import "TRSCheckLoginTask.h"

@implementation TRSCheckLoginTask

- (void)checkLoginStatusWithSuccessBlock:(void (^)(TRSResponseObject *))successBlock failureBlock:(void (^)(TRSResponseObject *))failureBlock {
    self.sBlock = successBlock;
    self.fBlock = failureBlock;
    
    NSString *string = [TRSRequestBuilder buildCheckLoginStatus];
    
    [TRSSessionManager.manager POST:string parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        NSDictionary *responseJson = responseObject;
        
        [self parseJsonSuccess:responseJson];
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSHTTPURLResponse *response = (NSHTTPURLResponse *)task.response;
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
