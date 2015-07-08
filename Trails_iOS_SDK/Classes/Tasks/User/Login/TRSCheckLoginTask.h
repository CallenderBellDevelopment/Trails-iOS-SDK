//
//  TRSCheckLoginTask.h
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 19/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import "TRSNetworkTask.h"

@interface TRSCheckLoginTask : TRSNetworkTask

- (void)checkLoginStatusWithSuccessBlock:(void (^)(TRSResponseObject *))successBlock failureBlock:(void (^)(TRSResponseObject *))failureBlock;

@end
