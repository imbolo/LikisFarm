//
//  NPeiyushixiangViewController.m
//  farm
//
//  Created by liuyang on 14-5-23.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "NPeiyushixiangViewController.h"

@interface NPeiyushixiangViewController ()

@end

BOOL isPaperOn = YES;

@implementation NPeiyushixiangViewController

@synthesize paper;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) initUI
{
    paper = [[UIImageView alloc] initWithFrame:CGRectMake(10, 100, 260, 80)];
    [paper setImage:[UIImage imageNamed: @"tip-unclick.png"]];
    paper.bounds = CGRectInset(paper.frame, 0, 0);
    [self.view addSubview:paper];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initUI];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)togglePaper:(id)sender {
    
    [UIView beginAnimations:@"Curl"context:nil];//动画开始
    [UIView setAnimationDuration:1.25];//动画持续时间
    
    if (isPaperOn == YES) {
        paper.hidden = YES;
        [UIView setAnimationTransition: UIViewAnimationTransitionCurlUp//类型
                               forView:paper
                                 cache:YES];
    }
    else {
        paper.hidden = NO;
        [UIView setAnimationTransition: UIViewAnimationTransitionCurlDown//类型
                               forView:paper
                                 cache:YES];
    }
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];//动画速度
    
    [UIView commitAnimations];
    
    
    isPaperOn = !isPaperOn;
}

@end
