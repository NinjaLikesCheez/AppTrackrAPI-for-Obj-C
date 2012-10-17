//
//  Link.m
//  AppTrackrAPI
//
//  Created by Thomas Hedderwick on 18/03/12.
//  Copyright (c) 2012 L1fe 1n b1nary c0de. All rights reserved.
//

#import "Link.h"
#import "Request.h"

@implementation Link

// Getters 
-(NSDictionary *) argsBlock
{
    return argsBlock;
}

-(NSDictionary *) authBlock
{
    return authBlock;
}

// Setters
-(void) setArgsBlock:(NSDictionary *)input
{
    argsBlock = input;
}

-(void) setAuthBlock:(NSDictionary *)input
{
    authBlock = input;
}

// Other
-(NSDictionary *) get
{
    NSMutableDictionary *reqDict = [[NSMutableDictionary alloc] init];
    [reqDict setObject:@"Link" forKey:@"object"];
    [reqDict setObject:@"get" forKey:@"action"];
    [reqDict setObject:argsBlock forKey:@"args"];
    
    Request *req = [[Request alloc] init];
    [req setReqDict:reqDict];
    
    NSDictionary *returnData = [req sendRequest];
    
    return returnData;

}

-(NSDictionary *) getMagnet
{
    NSMutableDictionary *reqDict = [[NSMutableDictionary alloc] init];
    [reqDict setObject:@"Link" forKey:@"object"];
    [reqDict setObject:@"getMagnet" forKey:@"action"];
    [reqDict setObject:argsBlock forKey:@"args"];
    
    Request *req = [[Request alloc] init];
    [req setReqDict:reqDict];
    
    NSDictionary *returnData = [req sendRequest];
    
    return returnData;
}

-(NSDictionary *) submit
{
    NSMutableDictionary *reqDict = [[NSMutableDictionary alloc] init];
    [reqDict setObject:@"Link" forKey:@"object"];
    [reqDict setObject:@"sumbit" forKey:@"action"];
    [reqDict setObject:authBlock forKey:@"auth"];
    [reqDict setObject:argsBlock forKey:@"args"];

    Request *req = [[Request alloc] init];
    [req setReqDict:reqDict];

    NSDictionary *returnData = [req sendRequest];

    return returnData;

}

@end
