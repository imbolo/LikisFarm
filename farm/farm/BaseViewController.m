//
//  BaseViewController.m
//  farm
//
//  Created by liuyang on 14-5-14.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

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
//    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"viewBackground.png"]];
    UIImage* image = [UIImage imageNamed:@"viewBackground.png"];
    self.view.layer.contents = (id) image.CGImage;
//    self.view.layer.backgroundColor = [UIColor clearColor].CGColor;
//
    double version = [[UIDevice currentDevice].systemVersion doubleValue];
    if ( version >= 7.0f && self.navigationController ) {
        
        self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
       
        UIBarButtonItem *returnButtonItem = [[UIBarButtonItem alloc] init];
        returnButtonItem.title = @"";
        self.navigationItem.backBarButtonItem = returnButtonItem;
        self.navigationController.navigationBar.backIndicatorImage = [UIImage imageNamed:@"backButton.png"];
        self.navigationController.navigationBar.backIndicatorTransitionMaskImage = [UIImage imageNamed:@"backButton.png"];
        

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

@end
