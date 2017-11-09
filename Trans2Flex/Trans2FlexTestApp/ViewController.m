//
//  ViewController.m
//  Trans2FlexTestApp
//
//  Created by July on 2017/11/9.
//  Copyright © 2017年 July. All rights reserved.
//

#import "ViewController.h"
#import "Trans2FlexTestView.h"
#import "Trans2Flex.h"

#define ViewWidth 375
#define ViewHeight 1000

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        Trans2FlexTestView *testView = [[Trans2FlexTestView alloc] initWithFrame:CGRectMake(0, 80, ViewWidth, ViewHeight)];
        UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
        scrollView.showsVerticalScrollIndicator = YES;
        scrollView.showsHorizontalScrollIndicator = YES;
        scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        scrollView.contentSize = CGSizeMake(ViewWidth, ViewHeight + 1);
        [scrollView addSubview:testView];
        [self.view addSubview:scrollView];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSArray *res = [[TransHelper sharedHelper] extractViewInfoList:self.view];
    NSLog(@"%@",res);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
