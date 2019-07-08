//
//  ViewController.m
//  Layout
//
//  Created by huapu on 2019/7/8.
//  Copyright © 2019 chenyingchao. All rights reserved.
//

#import "ViewController.h"
#import "BBViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    self.tableView.hidden = YES;
//    [self.tableView removeFromSuperview];
    BBViewController * BB = [[BBViewController alloc] init];
    [self presentViewController:BB animated:YES completion:nil];
}

@end
