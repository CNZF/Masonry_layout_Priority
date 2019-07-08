//
//  BBViewController.m
//  Layout
//
//  Created by huapu on 2019/7/8.
//  Copyright © 2019 chenyingchao. All rights reserved.
//

#import "BBViewController.h"
#import <Masonry/Masonry.h>

@interface BBViewController ()

@property (nonatomic, strong) UILabel * nameLabel;
@property (nonatomic, strong) UILabel * nameLabel1;
@property (nonatomic, strong) UILabel * sexLabel;

@end

@implementation BBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.nameLabel];
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(20);
        make.left.equalTo(self.view).offset(20);
        make.height.equalTo(@(100));
        make.width.greaterThanOrEqualTo(@20);
    }];
    
    [self.view addSubview:self.nameLabel1];
    [self.nameLabel1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(20);
        make.right.equalTo(self.view).offset(-20);
        make.height.equalTo(@(100));
        make.left.equalTo(self.nameLabel.mas_right).offset(10);
    }];
    
    self.nameLabel.text = @"我是一个粉刷匠个粉刷匠个匠个粉刷匠个粉刷匠个粉刷匠个粉刷匠个粉刷匠个粉刷粉刷匠个粉刷匠";

    [self.nameLabel setContentCompressionResistancePriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    self.nameLabel.hidden = YES;
}


- (UILabel *)nameLabel{
    if (!_nameLabel) {
        _nameLabel = [[UILabel alloc] init];
        _nameLabel.text = @"我爱罗";
        _nameLabel.backgroundColor = [UIColor cyanColor];
    }
    return _nameLabel;
}

- (UILabel *)nameLabel1{
    if (!_nameLabel1) {
        _nameLabel1 = [[UILabel alloc] init];
        _nameLabel1.text = @"我爱罗awpdskpfszpkfmd爱罗awpdskpfszpkskgmkgsdmkgp1";
        _nameLabel1.backgroundColor = [UIColor yellowColor];
    }
    return _nameLabel1;
}

- (UILabel *)sexLabel{
    if (!_sexLabel) {
        _sexLabel = [[UILabel alloc] init];
        _sexLabel.text = @"查克拉";
        _sexLabel.backgroundColor = [UIColor orangeColor];
    }
    return _sexLabel;
}
@end
