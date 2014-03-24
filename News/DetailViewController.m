//
//  DetailViewController.m
//  News
//
//  Created by Willrock on 23.03.14.
//  Copyright (c) 2014 Willrock. All rights reserved.
//

#import "DetailViewController.h"
#import "UIImageView+AFNetworking.h"
#import "WebViewController.h"

@interface DetailViewController () <UIActionSheetDelegate>

@end

@implementation DetailViewController

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
    [self reloadData];
    
    self.navigationItem.title = @"Новость";
    // Do any additional setup after loading the view.
}


-(void)setDetail:(RSSItem *)detail{
    _detail = detail;
    NSLog(@"%@", _detail.title);
}

-(void)reloadData{
    if (!_detail) {
        return;
    }
    
    self.titleLabel.text = _detail.title;
    NSArray *images = [_detail imagesFromContent];
    
    NSString *imagesUrlString = [images objectAtIndex:0];
    NSURL *imagesUrl = [NSURL URLWithString:imagesUrlString];
    [self.imageView setImageWithURL:imagesUrl];
    self.textView.text = _detail.itemDescription;
    
    
    CGRect contentViewFrame = _contentView.frame;
    contentViewFrame.size.height += _textView.contentSize.height - _textView.frame.size.height;
    _contentView.frame = contentViewFrame;
    _scrollView.contentSize = _contentView.frame.size;
}

- (IBAction)openBarButtonAction:(id)sender {
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"отменить" destructiveButtonTitle:nil otherButtonTitles:@"Открыть",@"открыть в Safari", nil];
    [actionSheet showInView:self.view];

    
}

-(void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:
            [self performSegueWithIdentifier:@"OpenUrl" sender:self];
            break;
        case 1:
            [[UIApplication sharedApplication] openURL:_detail.link];
            break;
        default:
            break;
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    WebViewController *controller = segue.destinationViewController;
    controller.url = _detail.link;
}
@end
