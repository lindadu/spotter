//
//  FirstViewController.h
//  spotter
//
//  Created by Linda Du on 3/15/14.
//  Copyright (c) 2014 spotter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
