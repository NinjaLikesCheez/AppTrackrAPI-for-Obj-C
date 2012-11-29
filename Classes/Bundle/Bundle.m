//
//  Bundle.m
//  AppTrackrAPI
//
//  Created by Thomas Hedderwick on 18/03/12.
//  Copyright (c) 2012 L1fe 1n b1nary c0de. All rights reserved.
//

#import "Bundle.h"
#import "Request.h"

@implementation Bundle

-(void)initWithArgumentsBlock:(NSDictionary *)arguments
{
    argsBlock = arguments;
}

// Getters
-(NSDictionary *) argsBlock
{
    return argsBlock;
}

// Setters
#warning depricated
-(void) setArgsBlock:(NSDictionary *)input
{
    argsBlock = input;
}

// Other
-(NSDictionary *) getItunesIDs
{
    NSMutableDictionary *reqDict = [[NSMutableDictionary alloc] init];
    [reqDict setObject:@"Bundle" forKey:@"object"];
    [reqDict setObject:@"getItunesIDs" forKey:@"action"];
    [reqDict setObject:argsBlock forKey:@"args"];
    
    Request *req = [[Request alloc] init];
    [req setReqDict:reqDict];
    
    NSDictionary *returnData = [req sendRequest];
    
    return returnData;
}

-(NSDictionary *) getBundleIDs
{
    NSMutableDictionary *reqDict = [[NSMutableDictionary alloc] init];
    [reqDict setObject:@"Bundle" forKey:@"object"];
    [reqDict setObject:@"getBundleIDs" forKey:@"action"];
    [reqDict setObject:argsBlock forKey:@"args"];
    
    Request *req = [[Request alloc] init];
    [req setReqDict:reqDict];
    
    NSDictionary *returnData = [req sendRequest];
    
    return returnData;
}
@end
