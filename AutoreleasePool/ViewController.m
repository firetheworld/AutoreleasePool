//
//  ViewController.m
//  AutoreleasePool
//
//  Created by 郑良凯 on 2018/5/20.
//  Copyright © 2018年 datayes. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"

@interface ViewController ()

@end

@implementation ViewController

__weak id reference = nil;

#pragma mark - View Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str = [NSString stringWithFormat:@"reference"];
    reference = str;
    NSLog(@"viewDidLoad reference: %@", reference);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear reference: %@", reference);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear reference: %@", reference);
}

#pragma mark - Action

- (IBAction)jumpToNext:(id)sender {
    NSLog(@"jumpToNext");
    NextViewController *vc = [[NextViewController alloc] initWithNibName:@"NextViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
