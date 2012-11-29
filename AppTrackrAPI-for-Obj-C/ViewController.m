//
//  ViewController.m
//  AppTrackrAPI-for-Obj-C
//
//  Created by Thomas Hedderwick on 28/11/2012.
//  Copyright (c) 2012 NinjaLikesCHeez. All rights reserved.
//

#import "ViewController.h"

#import "AppTrackrAPI.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    int i = 0;
    
    authorisation = [[NSDictionary alloc] initWithObjectsAndKeys:@"Kyek", @"username", @"872c1c66c512dd160496c7496891230a", @"passhash", nil];
    User *user = [[User alloc] initWithAuthorisation:authorisation];
    returnData = [user checkAuth];
    code = [[returnData objectForKey:@"code"] intValue];
    NSLog(@"User Code: %d, expected: 401", code);
    if (code == UNAUTHORIZED){
        i++;
    }
    returnData = nil;
    authorisation = nil;
    
    Category *category = [[Category alloc] init];
    returnData = [category getList];
    code = [[returnData objectForKey:@"code"] intValue];
    NSLog(@"Category Code: %d, expected: 200", code);
    if (code == OK){
        i++;
    }
    
    arguments = [[NSDictionary alloc] initWithObjectsAndKeys:[NSNumber numberWithInt:304923687], @"app_id", nil];
    Screenshot *screenshot = [[Screenshot alloc] initWithArguments:arguments];
    returnData = [screenshot get];
    code = [[returnData objectForKey:@"code"] intValue];
    NSLog(@"Screenshot Code: %d, expected: 200", code);
    if (code == OK){
        i++;
    }
    arguments = nil;
    returnData = nil;

    arguments = [[NSDictionary alloc] initWithObjectsAndKeys:[NSNumber numberWithInt:310749044], @"app_id", nil];
    Link *link = [[Link alloc] initWithArgumentsBlock:arguments];
    returnData = [link get];
    code = [[returnData objectForKey:@"code"] intValue];
    NSLog(@"Link Code: %d, expected: 200", code);
    if(code == OK){
        i++;
    }
    arguments = nil;
    returnData = nil;

    arguments = [[NSDictionary alloc] initWithObjectsAndKeys:[NSNumber numberWithInt:291443933], @"app_id", [NSArray arrayWithObject:@"appid"], @"fields", nil];
    App *app = [[App alloc] initWithArgumentsBlock:arguments];
    returnData = [app getDetails];
    code = [[returnData objectForKey:@"code"] intValue];
    NSLog(@"App Code: %d, expected: 200", code);
    if (code == OK){
        i++;
    }
    arguments = nil;

    arguments = [[NSDictionary alloc] initWithObjectsAndKeys:[NSArray arrayWithObjects:@"com.turtle.face", @"net.taco.meow", @"com.frost.tom", @"what.the.hell", nil], @"bundleList", nil];
    Bundle *bundle = [[Bundle alloc] initWithArgumentsBlock:arguments];
    returnData = [bundle getItunesIDs];
    code = [[returnData objectForKey:@"code"] intValue];
    NSLog(@"Bundle Code: %d, expected: 200", code);
    if (code == OK){
        i++;
    }
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(110, 180, 100, 100)];
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor clearColor];
    
    if (i == 7){
        self.view.backgroundColor = [UIColor greenColor];
        label.text = @"Passed";
        label.textColor = [UIColor blueColor];
    } else {
        self.view.backgroundColor = [UIColor redColor];
        label.text = @"Failed";
    }
    
    [self.view addSubview:label];



    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
