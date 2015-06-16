//
//  TRSSettings.m
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 16/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import "TRSSettings.h"

@implementation TRSSettings

static TRSSettings *sharedInstance = nil;

+ (TRSSettings *)getInstance {
    if (!sharedInstance)
        sharedInstance = [TRSSettings new];
    
    return sharedInstance;
}

- (id)init {
    self = [super init];
    
    if (self) {
        [self baseInit];
    }
    
    return self;
}

- (void)baseInit {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if ([defaults objectForKey:KEY_LOGGED_IN_USER])
        self.user = [[TRSUser alloc] initFromJson:[defaults objectForKey:KEY_LOGGED_IN_USER]];
}

- (BOOL)isLoggedIn {
    return self.user != nil;
}

- (void)setUser:(TRSUser *)p {
    _user = p;
    
    if (p) {
        [[NSUserDefaults standardUserDefaults] setObject:p.asDictionary forKey:KEY_LOGGED_IN_USER];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    else {
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:KEY_LOGGED_IN_USER];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}

- (NSString *)token {
    return [[NSUserDefaults standardUserDefaults] stringForKey:KEY_TOKEN];
}

- (void)setToken:(NSString *)token {
    [[NSUserDefaults standardUserDefaults] setValue:token forKey:KEY_TOKEN];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
