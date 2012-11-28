//
//  Category.m
//  AppTrackrAPI
//
//  Created by Thomas Hedderwick on 18/03/12.
//  Copyright (c) 2012 L1fe 1n b1nary c0de. All rights reserved.
//

#import "Category.h"
#import "Request.h"

@implementation Category

-(NSDictionary *) getList
{
    NSDictionary *reqDict = [[NSDictionary alloc] initWithObjectsAndKeys:@"Category", @"object", @"getList", @"action", nil]; 
    
    Request *request = [[Request alloc] init];
    [request setReqDict:reqDict];
    
    NSDictionary *returnData = [request sendRequest];
                              
    return returnData;
}



@end
