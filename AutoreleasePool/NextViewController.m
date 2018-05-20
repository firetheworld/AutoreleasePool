//
//  NextViewController.m
//  AutoreleasePool
//
//  Created by 郑良凯 on 2018/5/20.
//  Copyright © 2018年 datayes. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

__weak id nextReference = nil;

#pragma mark - View Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str = [NSString stringWithFormat:@"nextReference"];
    nextReference = str;
    NSLog(@"viewDidLoad nextReference: %@", nextReference);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear nextReference: %@", nextReference);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear nextReference: %@", nextReference);
}

- (void)dealloc {
    NSLog(@"dealloc nextReference: %@", nextReference);
}

#pragma mark - Action

- (IBAction)junmToVC:(id)sender {
    NSLog(@"junmToVC");
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = (UIViewController *)[storyboard instantiateViewControllerWithIdentifier:@"ViewController"];

    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)junmToSecVC:(id)sender {
    NSLog(@"junmToSecVC");
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = (UIViewController *)[storyboard instantiateViewControllerWithIdentifier:@"StSecViewController"];
    
    [self.navigationController pushViewController:vc animated:YES];
}
@end
