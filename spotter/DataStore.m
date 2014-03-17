//
//  DataStore.m
//  spotter
//
//  Created by Linda Du on 3/16/14.
//  Copyright (c) 2014 spotter. All rights reserved.
//

#import <FacebookSDK/FacebookSDK.h>
#import "DataStore.h"

@implementation DataStore

static DataStore *instance = nil;
+ (DataStore *) instance
{
    @synchronized (self) {
        if (instance == nil) {
            instance = [[DataStore alloc] init];
        }
    }
    return instance;
}

- (id) init
{
    self = [super init];
    if (self) {
        _friends = [[NSArray alloc] init];
        /*FBRequest *friendsRequest = [FBRequest requestForMyFriends];
        [friendsRequest startWithCompletionHandler: ^(FBRequestConnection *connection,
                                                      NSDictionary* result,
                                                      NSError *error) {
            // 2
            _friends = result[@"data"];
            for (NSDictionary<FBGraphUser>* friend in _friends) {
                NSLog(@"Found a friend: %@", friend.name);
                // 3
                // Add the friend to the list of friends in the DataStore
                //[[DataStore instance].fbFriends setObject:friend forKey:friend.id];
            }
        }];*/
    }
    return self;
}

@end
