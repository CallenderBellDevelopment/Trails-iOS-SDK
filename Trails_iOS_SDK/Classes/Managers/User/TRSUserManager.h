//
//  TRSUserManager.h
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 17/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRSUserManager : NSObject

+ (void)loginWithUsername:(NSString *)username password:(NSString *)password successBlock:(void (^)(TRSResponseObject *))successBlock failureBlock:(void (^)(TRSResponseObject *))failureBlock;

@end
