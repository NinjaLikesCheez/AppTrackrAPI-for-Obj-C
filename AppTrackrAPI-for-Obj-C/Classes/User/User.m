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

-(id)initWithAuthorisation:(NSDictionary *)authorisation
{
    if ((self = [super init]))
    {
        authBlock = authorisation;
    }
    return self;
}

-(NSDictionary *) checkAuth;
{
    NSMutableDictionary *reqDict = [[NSMutableDictionary alloc] init];
    [reqDict setObject:@"User" forKey:@"object"];
    [reqDict setObject:@"checkAuth" forKey:@"action"];
    [reqDict setObject:authBlock forKey:@"auth"];
    
    Request *req = [[Request alloc] initWithRequestBlock:reqDict];

    NSDictionary *returnData = [req sendRequest];
    
    return returnData;
    
}

@end
