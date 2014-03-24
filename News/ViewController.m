//
//  ViewController.m
//  News
//
//  Created by Willrock on 23.03.14.
//  Copyright (c) 2014 Willrock. All rights reserved.
//

#import "ViewController.h"
#import "ImageCell.h"
#import "DetailViewController.h"
#import "RSSParser.h"
#import "UIImageView+AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = @"ITDox";
    

    
    NSURL *url = [NSURL URLWithString:@"http://itdox.ru/feed/"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    
    [RSSParser parseRSSFeedForRequest:request success:^(NSArray *feedItems){
            for (RSSItem *item in feedItems) {
                NSLog(@"%@", item.title);
                
                _data = feedItems;
                [self.tableView reloadData];
            }
        }
        failure:^(NSError *error){
            NSLog(@"%@", error);
        }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_data count];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    if (indexPath) {
        [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:YES];
    }
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *const CellId3 = @"ImageCell";	
    
    ImageCell *cell = [tableView dequeueReusableCellWithIdentifier: CellId3];
    RSSItem *item = [_data objectAtIndex:indexPath.row];
    
    cell.cellTextLabel.text = item.title;
    NSArray *images = [item imagesFromContent];
    
    NSString *imagesUrlString = [images objectAtIndex:0];
    NSURL *imagesUrl = [NSURL URLWithString:imagesUrlString];
    [cell.cellImageView setImageWithURL:imagesUrl];
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    if(indexPath) {
        RSSItem *item = [_data objectAtIndex:indexPath.row];
        [segue.destinationViewController setDetail:item];
    }
}

@end
