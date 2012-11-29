//
//  Screenshot.m
//  AppTrackrAPI
//
//  Created by Thomas Hedderwick on 18/03/12.
//  Copyright (c) 2012 L1fe 1n b1nary c0de. All rights reserved.
//

#import "Screenshot.h"
#import "Request.h"

@implementation Screenshot

-(id)initWithArguments:(NSDictionary *)arguments
{
    if((self = [super init]))
    {
        argsBlock = arguments;
    }
    return self;
}
-(NSDictionary *) get
{
    NSMutableDictionary *reqDict = [[NSMutableDictionary alloc] init];
    [reqDict setObject:@"Screenshot" forKey:@"object"];
    [reqDict setObject:@"get" forKey:@"action"];
    [reqDict setObject:argsBlock forKey:@"args"];
    
    Request *req = [[Request alloc] initWithRequestBlock:reqDict];
    
    NSDictionary *returnData = [req sendRequest];
    
    return returnData;
    
}


@end
