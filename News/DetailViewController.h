//
//  DetailViewController.h
//  News
//
//  Created by Willrock on 23.03.14.
//  Copyright (c) 2014 Willrock. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RSSItem.h"

@interface DetailViewController : UIViewController

@property (nonatomic, strong) RSSItem *detail;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextView *textView;
- (IBAction)openBarButtonAction:(id)sender;

@end
