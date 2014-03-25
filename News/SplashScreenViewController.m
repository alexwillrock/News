//
//  SplashScreenViewController.m
//  News
//
//  Created by Willrock on 25.03.14.
//  Copyright (c) 2014 Willrock. All rights reserved.
//

#import "SplashScreenViewController.h"


@implementation SplashScreenViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"Default-568h@2x.png"];
    self.imageView.image = image;
}




@end
