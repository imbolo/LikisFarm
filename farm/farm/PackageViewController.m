//
//  PackageViewController.m
//  farm
//
//  Created by liuyang on 14-5-20.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "PackageViewController.h"

@interface PackageViewController ()

@end

@implementation PackageViewController

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
- (IBAction)gotoShopCart:(id)sender {
    
    ViewController* nextView = [self.storyboard instantiateViewControllerWithIdentifier:@"shopcart"];
    
    [self.navigationController pushViewController:nextView animated:YES];
}

@end
