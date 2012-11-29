//
//  Request.m
//  AppTrackrAPI
//
//  Created by Thomas Hedderwick on 17/03/12.
//  Copyright (c) 2012 L1fe 1n b1nary c0de. All rights reserved.
//

#import "Request.h"

#import "APIStatusCode.h"

#import "SBJson.h"

@implementation Request

-(id)initWithRequestBlock:(NSDictionary *)request
{
    if ((self = [super init]))
    {
    reqDict = request;
    }
    
    return self;
}

- (NSDictionary *)sendRequest
{
    return [self sendRequestWithErrorAlert:NO];
}

- (NSDictionary *)sendRequestWithErrorAlert:(BOOL)errorAlert
{
    // Wrap Request
    SBJsonWriter *writer = [[SBJsonWriter alloc] init];
    NSString *json_string = [writer stringWithObject:reqDict];
    
    // Build and rewrap request
    NSDictionary *requestDict = [[NSDictionary alloc] initWithObjectsAndKeys:json_string, @"request", nil];
    NSString *requestJSON = [writer stringWithObject:requestDict];
    
    // Encode requestJSON string
    NSString *URLEncodedString = [requestJSON stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *requestString = [NSString stringWithFormat:@"request=%@", URLEncodedString];
    
    // Prepair URL to request from and build data object
    NSMutableURLRequest *requestURL = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:@"http://api.apptrackr.cd/"]];
    NSData *requestData = [NSData dataWithBytes:[requestString UTF8String] length:[requestString length]];
    
    // Set HTTP stuff
    [requestURL setHTTPMethod:@"POST"];
    [requestURL setValue:@"applicaiton/json" forHTTPHeaderField:@"Accept"];
    [requestURL setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [requestURL setValue:[NSString stringWithFormat:@"%d", [requestData length]] forHTTPHeaderField:@"Content-Length"];
    [requestURL setHTTPBody:requestData];
    
    // Prepair for liftoff
    NSURLResponse *response;
    NSError *err;
    
    // Send request and capture returning data
    NSData *returnData = [NSURLConnection sendSynchronousRequest:requestURL returningResponse:&response error:&err];
    
    SBJsonParser *parser = [SBJsonParser new];
    id obj = [parser objectWithData:returnData];
    
    int code = [[obj objectForKey:@"code"] intValue];
    
    NSMutableDictionary *returnDict = [[NSMutableDictionary alloc] init];
    [returnDict setValue:[NSNumber numberWithInt:code] forKey:@"code"];
    [returnDict setValue:[self getData:obj] forKey:@"data"]; 
    
    if (errorAlert){
        if (code >= 400){
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"API Error" message:[APIStatusCode getMessageForStatusCode:code] delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alert show];
        }
    }
    
    return returnDict;
    
}

- (NSDictionary*) getData:(NSDictionary*)response
{
    // Take 'data' obj as a string
    NSString *dataString = [response objectForKey:@"data"];
    
    // Alloc the parser and parse the data string
    SBJsonParser *parser = [SBJsonParser new];
    NSDictionary *data = [parser objectWithString:dataString];
    
    return data;
}

@end
