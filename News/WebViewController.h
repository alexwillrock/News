//
//  WebViewController.h
//  News
//
//  Created by Willrock on 24.03.14.
//  Copyright (c) 2014 Willrock. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic)NSURL *url;

@end
