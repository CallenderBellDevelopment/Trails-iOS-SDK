//
//  TRSUser.h
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 16/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRSUser : NSObject <TRSJSONSerializable>

@property (nonatomic, assign) long userId;
@property (nonatomic, copy) NSString *username;
@property (nonatomic, copy) NSString *firstname;
@property (nonatomic, copy) NSString *lastname;
@property (nonatomic, copy) NSString *email;

- (id)initFromJson:(NSDictionary *)json;

@end
