//
//  FriendsViewController.m
//  spotter
//
//  Created by Linda Du on 3/16/14.
//  Copyright (c) 2014 spotter. All rights reserved.
//

#import <FacebookSDK/FacebookSDK.h>
#import "FriendsViewController.h"

@implementation FriendsViewController

NSArray* friends;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        FBRequest *friendsRequest = [FBRequest requestForMyFriends];
        [friendsRequest startWithCompletionHandler: ^(FBRequestConnection *connection,
                                                      NSDictionary* result,
                                                      NSError *error) {
            friends = [result objectForKey:@"data"];
        }];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
