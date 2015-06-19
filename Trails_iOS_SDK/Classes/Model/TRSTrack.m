//
//  TRSTrack.m
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 16/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import "TRSTrack.h"

@implementation TRSTrack

- (id)initFromJson:(NSDictionary *)json {
    self = [super init];
    
    if (self) {
        self.trackId = [json[JSON_TRACK_ID] longValue];
        self.genre = json[JSON_TRACK_GENRE];
        self.title = json[JSON_TRACK_TITLE];
        self.artist = json[JSON_TRACK_ARTIST];
        self.bpm = [json[JSON_TRACK_BPM] intValue];
        self.mood = MoodType(json[JSON_TRACK_MOOD]);
    }
    
    return self;
}

- (NSDictionary *)asDictionary {
    NSMutableDictionary *json = [NSMutableDictionary new];
    
    json[JSON_TRACK_ID] = @(self.trackId);
    
    if (self.genre)
        json[JSON_TRACK_GENRE] = self.genre;
    if (self.title)
        json[JSON_TRACK_TITLE] = self.title;
    if (self.artist)
        json[JSON_TRACK_ARTIST] = self.artist;
    
    json[JSON_TRACK_BPM] = @(self.bpm);
    json[JSON_TRACK_MOOD] = MOOD_TYPE_LIST[self.mood];
    
    return json;
}

- (BOOL)isEqual:(id)other {
    if (other == self)
        return YES;
    if (!other || ![other isKindOfClass:[self class]])
        return NO;
    return [self isEqualToWidget:other];
}

- (BOOL)isEqualToWidget:(TRSTrack *)aWidget {
    if (self == aWidget)
        return YES;
    if (self.trackId != aWidget.trackId)
        return NO;
    return YES;
}

@end
