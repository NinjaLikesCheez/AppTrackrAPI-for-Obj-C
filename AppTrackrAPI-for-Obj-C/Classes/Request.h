//
//  Request.h
//  AppTrackrAPI
//
//  Created by Thomas Hedderwick on 17/03/12.
//  Copyright (c) 2012 L1fe 1n b1nary c0de. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Request : NSObject
{
    NSDictionary *reqDict;
}

-(id)initWithRequestBlock:(NSDictionary *) request;

- (NSDictionary *)sendRequest;
- (NSDictionary *)sendRequestWithErrorAlert:(BOOL)errorAlert;
-(NSDictionary*) getData:(NSDictionary*)response;



@end
