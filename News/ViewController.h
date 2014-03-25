//
//  ViewController.h
//  News
//
//  Created by Willrock on 23.03.14.
//  Copyright (c) 2014 Willrock. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *data;

@end
