//
//  Link.h
//  AppTrackrAPI
//
//  Created by Thomas Hedderwick on 18/03/12.
//  Copyright (c) 2012 L1fe 1n b1nary c0de. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Link : NSObject
{
    NSDictionary *argsBlock;
    NSDictionary *authBlock;
}

// Getters
-(NSDictionary *) argsBlock;
-(NSDictionary *) authBlock;

// Setters 
-(void) setArgsBlock:(NSDictionary *) input;
-(void) setAuthBlock:(NSDictionary *) input;

// Other
-(NSDictionary *) get;
-(NSDictionary *) submit;

@end
