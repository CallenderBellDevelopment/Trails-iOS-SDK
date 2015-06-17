//
//  TRSUserManager.m
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 17/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import "TRSUserManager.h"
#import "TRSLoginTask.h"

@implementation TRSUserManager

+ (void)loginWithUsername:(NSString *)username password:(NSString *)password successBlock:(void (^)(TRSResponseObject *))successBlock failureBlock:(void (^)(TRSResponseObject *))failureBlock {
    TRSLoginTask *task = [TRSLoginTask new];
    [task loginWithUsername:username password:password successBlock:successBlock failureBlock:failureBlock];
}

@end
