//
//  FirstViewController.m
//  spotter
//
//  Created by Linda Du on 3/15/14.
//  Copyright (c) 2014 spotter. All rights reserved.
//

#import <FacebookSDK/FacebookSDK.h>
#import "FirstViewController.h"
#import "FriendsViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

NSArray* friends;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        /*
        FBRequest *friendsRequest = [FBRequest requestForMyFriends];
        [friendsRequest startWithCompletionHandler: ^(FBRequestConnection *connection,
                                                      NSDictionary* result,
                                                      NSError *error) {
            friends = [result objectForKey:@"data"];
            
            UILabel  * label = [[UILabel alloc] initWithFrame:CGRectMake(40, 30, 300, 50)];
            label.backgroundColor = [UIColor clearColor];
            label.textAlignment = NSTextAlignmentCenter; // UITextAlignmentCenter, UITextAlignmentLeft
            label.textColor=[UIColor whiteColor];
            label.numberOfLines=0;
            label.lineBreakMode=UILineBreakModeWordWrap;
            label.text = [NSString stringWithFormat: @"Found: %i friends", friends.count];
            [self.view addSubview:label];
            
            for (NSDictionary<FBGraphUser>* friend in friends) {
                UILabel  * label = [[UILabel alloc] initWithFrame:CGRectMake(40, 30, 300, 50)];
                label.backgroundColor = [UIColor clearColor];
                label.textAlignment = NSTextAlignmentCenter; // UITextAlignmentCenter, UITextAlignmentLeft
                label.textColor=[UIColor whiteColor];
                label.numberOfLines=0;
                label.lineBreakMode=UILineBreakModeWordWrap;
                label.text = [label.text stringByAppendingString: [NSString stringWithFormat: @"%s", friend.name]];
                [self.view addSubview:label];
                NSLog(@"I have a friend named %@ with id %@", friend.name, friend.id);
            }
        }];*/
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
