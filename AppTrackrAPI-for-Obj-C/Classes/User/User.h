//
//  User.h
//  AppTrackrAPI
//
//  Created by Thomas Hedderwick on 17/03/12.
//  Copyright (c) 2012 L1fe 1n b1nary c0de. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
{
    NSDictionary *authBlock;
    
}
//  ===========
//  = Getters =
//  ===========
-(NSDictionary *)authBlock;

//  ===========
//  = Setters =
//  ===========
-(void) setAuthBlock:(NSDictionary *) input;

// Other
-(NSDictionary *) checkAuth;


@end
