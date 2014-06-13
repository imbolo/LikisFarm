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
    
    self.navigationController.navigationBar.translucent = NO;
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
    if (version < 7.0) {
        [[UIBarButtonItem appearance] setBackButtonBackgroundImage:[[UIImage imageNamed:@"backButtonIOS6.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 12, 0, 0)]
                                                          forState:UIControlStateNormal
                                                        barMetrics:UIBarMetricsDefault];

        [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(5, 0)
                                                             forBarMetrics:UIBarMetricsDefault];

        [[UIBarButtonItem appearance] setTitleTextAttributes:
         @{ UITextAttributeFont: [UIFont systemFontOfSize:16],
            UITextAttributeTextShadowOffset: [NSValue valueWithUIOffset:UIOffsetZero]} forState:UIControlStateNormal];
        

    }
    
    self.navigationController.navigationBar.layer.backgroundColor = [[UIColor clearColor] CGColor];
    
    [self setShadowForNavigationBar];
    
}

- (void) setShadowForNavigationBar
{
    self.navigationController.navigationBar.layer.shadowColor = [[UIColor darkGrayColor] CGColor];
    self.navigationController.navigationBar.layer.shadowOffset = CGSizeMake(0.0, 4);
    self.navigationController.navigationBar.layer.shadowOpacity = 0.4;
    self.navigationController.navigationBar.layer.shouldRasterize = YES;
    self.navigationController.navigationBar.layer.masksToBounds = NO;
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
