//
//  TRSTrack.h
//  Trails_iOS_SDK
//
//  Created by Georgi Christov on 16/06/2015.
//  Copyright (c) 2015 Callender Bell Development. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRSTrack : NSObject <TRSJSONSerializable>

@property (nonatomic, assign) long trackId;
@property (nonatomic, copy) NSString *genre;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *artist;

- (id)initFromJson:(NSDictionary *)json;

@end
