//
//  StSecViewController.m
//  AutoreleasePool
//
//  Created by 郑良凯 on 2018/5/20.
//  Copyright © 2018年 datayes. All rights reserved.
//

#import "StSecViewController.h"

@interface StSecViewController ()

@end

@implementation StSecViewController

__weak id StSecReference = nil;

#pragma mark - View Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str = [NSString stringWithFormat:@"StSecReference"];
    StSecReference = str;
    NSLog(@"viewDidLoad StSecReference: %@", StSecReference);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear StSecReference: %@", StSecReference);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear StSecReference: %@", StSecReference);
}

- (void)dealloc {
    NSLog(@"dealloc StSecReference: %@", StSecReference);
}

@end
