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

-(id)initWithArgumentsBlock:(NSDictionary *) arguments;
-(id)initWithArgumentsBlock:(NSDictionary *)arguments andAuthorisationBlock:(NSDictionary *) authorisation;

-(NSDictionary *) get;
-(NSDictionary *) getMagnet;
-(NSDictionary *) submit;

@end
