//
//  ViewController.m
//  News
//
//  Created by Willrock on 23.03.14.
//  Copyright (c) 2014 Willrock. All rights reserved.
//

#import "ViewController.h"
#import "ImageCell.h"
#import "NCData.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = @"ITDox";
    
	_data = [NCData fetchData];
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
    
   // static NSString *const CellId = @"Cell";
    //static NSString *const CellId2 = @"Cell2";
    static NSString *const CellId3 = @"ImageCell";	
    
    ImageCell *cell = [tableView dequeueReusableCellWithIdentifier: CellId3];
    NCData *item = [_data objectAtIndex:indexPath.row];
    
    cell.cellTextLabel.text = item.title;
    cell.cellImageView.image = [UIImage imageNamed:item.imageName];
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    if(indexPath) {
        NCData *item = [_data objectAtIndex:indexPath.row];
        [segue.destinationViewController setDetail:item];
    }
}

@end
