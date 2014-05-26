//
//  RegistViewController.m
//  farm
//
//  Created by liuyang on 14-5-26.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "RegistViewController.h"

@interface RegistViewController ()

@end

@implementation RegistViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if ([[UIDevice currentDevice].systemVersion doubleValue] >= 7.0) {
        UIView* statusBlackView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 20)];
        statusBlackView.backgroundColor = [UIColor blackColor];
        [self.view addSubview:statusBlackView];
    }
    
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
- (IBAction)navBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
