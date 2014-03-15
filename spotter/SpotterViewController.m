//
//  SpotterViewController.m
//  spotter
//
//  Created by Linda Du on 3/14/14.
//  Copyright (c) 2014 spotter. All rights reserved.
//

#import "SpotterViewController.h"
#import <FacebookSDK/FacebookSDK.h>

@interface SpotterViewController ()

@end

@implementation SpotterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    FBLoginView *loginView = [[FBLoginView alloc] initWithReadPermissions:@[@"basic_info", @"email", @"user_likes"]];
    // Align the button in the center horizontally
    loginView.frame = CGRectOffset(loginView.frame, (self.view.center.x - (loginView.frame.size.width / 2)), 5);
    [self.view addSubview:loginView];
    
    FBRequest *friendsRequest = [FBRequest requestForMyFriends];
    [friendsRequest startWithCompletionHandler: ^(FBRequestConnection *connection,
                                                  NSDictionary* result,
                                                  NSError *error) {
        NSArray* friends = [result objectForKey:@"data"];
        
        UILabel *scoreLabel = [ [UILabel alloc ] init];
        scoreLabel.text = [NSString stringWithFormat: @"Found: %i friends", friends.count];
        
        for (NSDictionary<FBGraphUser>* friend in friends) {
            NSLog(@"I have a friend named %@ with id %@", friend.name, friend.id);
        }
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
