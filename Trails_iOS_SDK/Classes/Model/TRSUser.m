//
//  TRSUser.m
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 16/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import "TRSUser.h"

@implementation TRSUser

- (id)initFromJson:(NSDictionary *)json {
    self = [super init];
    
    if (self) {
        self.userId = [json[JSON_USER_ID] longValue];
        self.username = json[JSON_USER_USERNAME];
        self.firstname = json[JSON_USER_FIRSTNAME];
        self.lastname = json[JSON_USER_LASTNAME];
        self.email = json[JSON_USER_EMAIL];
    }
    
    return self;
}

- (NSDictionary *)asDictionary {
    NSMutableDictionary *json = [NSMutableDictionary new];
    
    json[JSON_USER_ID] = @(self.userId);
    
    if (self.username)
        json[JSON_USER_USERNAME] = self.username;
    if (self.firstname)
        json[JSON_USER_FIRSTNAME] = self.firstname;
    if (self.lastname)
        json[JSON_USER_LASTNAME] = self.lastname;
    if (self.email)
        json[JSON_USER_EMAIL] = self.email;
    
    return json;
}

- (BOOL)isEqual:(id)other {
    if (other == self)
        return YES;
    if (!other || ![other isKindOfClass:[self class]])
        return NO;
    return [self isEqualToWidget:other];
}

- (BOOL)isEqualToWidget:(TRSUser *)aWidget {
    if (self == aWidget)
        return YES;
    if (self.userId != aWidget.userId)
        return NO;
    return YES;
}

@end
