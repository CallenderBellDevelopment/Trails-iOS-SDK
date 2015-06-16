//
//  TRSConstants.h
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 16/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#ifndef Trails_iOS_SDK_TRSConstants_h
#define Trails_iOS_SDK_TRSConstants_h

typedef enum {
    SUCCESS,
    ERROR
} Result;

typedef enum {
    SERVER_ERROR,
    AUTHORIZATION_NEEDED,
    NOT_FOUND,
    ALREADY_EXISTS,
    FORBIDDEN,
    OTHER
} Reason;

#define KEY_LOGGED_IN_USER @"KEY_LOGGED_IN_USER"
#define KEY_TOKEN @"KEY_TOKEN"

#define COMPRESSION_QUALITY 0.7

#endif
