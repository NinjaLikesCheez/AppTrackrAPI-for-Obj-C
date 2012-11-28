//
//  App.m
//  AppTrackrAPI
//
//  Created by Thomas Hedderwick on 18/03/12.
//  Copyright (c) 2012 L1fe 1n b1nary c0de. All rights reserved.
//

#import "App.h"
#import "Request.h"

@implementation App

- (void)initWithArgumentsBlock:(NSDictionary *)arguments
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

-(NSDictionary *) getDetails
{
    NSMutableDictionary *reqDict = [[NSMutableDictionary alloc] init];
    [reqDict setObject:@"App" forKey:@"object"];
    [reqDict setObject:@"getDetails" forKey:@"action"];
    [reqDict setObject:argsBlock forKey:@"args"];
    
    Request *req = [[Request alloc] init];
    [req setReqDict:reqDict];
    
    NSDictionary *returnData = [req sendRequest];
    
    return returnData;
}

-(NSDictionary *) getList
{
    NSMutableDictionary *reqDict = [[NSMutableDictionary alloc] init];
    [reqDict setObject:@"App" forKey:@"object"];
    [reqDict setObject:@"getList" forKey:@"action"];
    [reqDict setObject:argsBlock forKey:@"args"];
    
    Request *req = [[Request alloc] init];
    [req setReqDict:reqDict];
    
    NSDictionary *returnData = [req sendRequest];
    
    return returnData;
}

-(NSDictionary *) scrape
{
    NSMutableDictionary *reqDict = [[NSMutableDictionary alloc] init];
    [reqDict setObject:@"App" forKey:@"object"];
    [reqDict setObject:@"scrape" forKey:@"action"];
    [reqDict setObject:argsBlock forKey:@"args"];
    
    Request *req = [[Request alloc] init];
    [req setReqDict:reqDict];
    
    NSDictionary *returnData = [req sendRequest];
    
    return returnData;
}

-(NSDictionary *) checkUpdate
{
    NSMutableDictionary *reqDict = [[NSMutableDictionary alloc] init];
    [reqDict setObject:@"App" forKey:@"object"];
    [reqDict setObject:@"checkUpdate" forKey:@"action"];
    [reqDict setObject:argsBlock forKey:@"args"];
    
    Request *req = [[Request alloc] init];
    [req setReqDict:reqDict];
    
    NSDictionary *returnData = [req sendRequest];
    
    return returnData;
}

@end
