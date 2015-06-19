//
//  TRSGetAllUsersTask.h
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 19/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import "TRSNetworkTask.h"

@interface TRSGetAllUsersTask : TRSNetworkTask

@property (nonatomic, assign) BOOL isStart;

- (void)getAllUsersWithSuccessBlock:(void (^)(TRSResponseObject *))successBlock cacheBlock:(void (^)(TRSResponseObject *))cacheBlock failureBlock:(void (^)(TRSResponseObject *))failureBlock;

@end
