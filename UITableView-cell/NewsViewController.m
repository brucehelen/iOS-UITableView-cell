//
//  NewsViewController.m
//  UITalbeView-自定义cell
//
//  Created by 朱正晶 on 15/2/23.
//  Copyright (c) 2015年 China. All rights reserved.
//

#import "NewsViewController.h"

@interface NewsViewController ()

@end

@implementation NewsViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.rowHeight = 80;
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:ID];

    if (cell == nil) {
        NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"NewsTable" owner:nil options:nil];
        cell = array[0];
    }

    return cell;
}




@end
