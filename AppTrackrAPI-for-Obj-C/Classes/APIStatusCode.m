//
//  APIStatusCode.m
//  Mod-Tools
//
//  Created by Lion User on 19/06/2012.
//  Copyright (c) 2012 L1fe 1n b1nary c0de. All rights reserved.
//

#import "APIStatusCode.h"

@implementation APIStatusCode
+ (NSString *)getMessageForStatusCode:(int)code
{
    switch (code) {
        case 200:
            return @"OK";
        case 201:
            return @"Created";
        case 202:
            return @"Accepted";
        case 206:
            return @"Partially Created";
        case 207:
            return @"Partially Accepted";
        case 400:
            return @"Bad Request";
        case 401:
            return @"Unauthorized";
        case 402:
            return @"User Not Permitted";
        case 403:
            return @"Forbidden";
        case 404:
            return @"Object Not Found";
        case 405:
            return @"Action Not Allowed";
        case 406:
            return @"Format Not Accepted";
        case 407:
            return @"Unacceptable Data";
        case 408:
            return @"Deprecated";
        case 410:
            return @"Resource Not Found";
        case 500:
            return @"Internal Server Error";
        case 501:
            return @"Not Implemented";
        case 503:
            return @"Service Unavailable";
        case 504:
            return @"Resource Timeout";
        default:
            return @"Unknown Error";
    }
}
@end
