//
//  TRSResponseObject.h
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 16/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRSResponseObject : NSObject

@property (nonatomic, assign) Result result;
@property (nonatomic, assign) Reason reason;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, strong) id object;

@end
