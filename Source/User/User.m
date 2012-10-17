//
//  User.m
//  AppTrackrAPI
//
//  Created by Thomas Hedderwick on 17/03/12.
//  Copyright (c) 2012 L1fe 1n b1nary c0de. All rights reserved.
//

#import "User.h"
#import "Request.h"

@implementation User

//  ==================
//  - Getter Methods -
//  ==================

-(NSDictionary *) authBlock
{
    return authBlock;
}

//  ==================
//  - Setter Methods -
//  ==================

-(void) setAuthBlock:(NSDictionary *)input
{
    authBlock = input;
}

//  =========
//  - Other -
//  =========

-(NSDictionary *) checkAuth;
{
    NSMutableDictionary *reqDict = [[NSMutableDictionary alloc] init];
    [reqDict setObject:@"User" forKey:@"object"];
    [reqDict setObject:@"checkAuth" forKey:@"action"];
    [reqDict setObject:authBlock forKey:@"auth"];
    
    Request *req = [[Request alloc] init];
    [req setReqDict:reqDict];
    NSDictionary *returnData = [req sendRequest];
    
    return returnData;
    
}

@end
