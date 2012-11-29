//
//  Screenshot.h
//  AppTrackrAPI
//
//  Created by Thomas Hedderwick on 18/03/12.
//  Copyright (c) 2012 L1fe 1n b1nary c0de. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Screenshot : NSObject
{
    NSDictionary *argsBlock;
}

- (id) initWithArguments:(NSDictionary *)arguments;

-(NSDictionary *) get;

@end
