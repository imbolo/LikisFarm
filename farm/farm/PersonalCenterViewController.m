//
//  PersonalCenterViewController.m
//  farm
//
//  Created by liuyang on 14-5-22.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "PersonalCenterViewController.h"

@interface PersonalCenterViewController ()

@end

@implementation PersonalCenterViewController

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
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"title个人中心"]];
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
- (IBAction)navtoAddressSelect:(id)sender {
    ViewController* nextView = [self.storyboard instantiateViewControllerWithIdentifier:@"addressSelect"];
    
    [self.navigationController pushViewController:nextView animated:YES];
}

- (IBAction)navtoModifyPwdView:(id)sender {
    ViewController* nextView = [self.storyboard instantiateViewControllerWithIdentifier:@"modifyPwdView"];
    
    [self.navigationController pushViewController:nextView animated:YES];
}

@end
