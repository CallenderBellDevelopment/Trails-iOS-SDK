//
//  TRSTrack.h
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 16/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    FEEL_GOOD,
    SAD,
    HAPPY,
    RELAXED
} MoodType;

#define MOOD_TYPE_LIST @[@"FEEL_GOOD", @"SAD", @"HAPPY", @"RELAXED"]

#define MoodType(str) (MoodType)[MOOD_TYPE_LIST indexOfObject:str]

@interface TRSTrack : NSObject <TRSJSONSerializable>

@property (nonatomic, assign) long trackId;
@property (nonatomic, copy) NSString *genre;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *artist;
@property (nonatomic, assign) int bpm;
@property (nonatomic, assign) MoodType mood;

- (id)initFromJson:(NSDictionary *)json;

@end
