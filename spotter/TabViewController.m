//
//  TabViewController.m
//  spotter
//
//  Created by Linda Du on 3/15/14.
//  Copyright (c) 2014 spotter. All rights reserved.
//

#import "TabViewController.h"
#import <FacebookSDK/FacebookSDK.h>
#import "SpotterViewController.h"

@interface TabViewController ()

@end

@implementation TabViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

/*- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    BOOL loggedIn = isOpen;
    if(loggedIn){
        SpotterViewController *loginViewController = [[SpotterViewController alloc] initWithNibName:@"SpotterViewControllerNibHere" bundle:nil];
        [self presentViewController: loginViewController animated:YES completion:nil];
        [self dismissViewControllerAnimated: YES completion: nil];
    }
}*/

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    if (!FBSession.activeSession.isOpen) {
        // if the session is closed, then we open it here, and establish a handler for state changes
        [FBSession.activeSession openWithCompletionHandler:^(FBSession *session,
                                                             FBSessionState state,
                                                             NSError *error) {
            switch (state) {
                case FBSessionStateClosedLoginFailed:
                {
                    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                                        message:error.localizedDescription
                                                                       delegate:nil
                                                              cancelButtonTitle:@"OK"
                                                              otherButtonTitles:nil];
                    [alertView show];
                }
                    break;
                default:
                    break;
            }
        }];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
