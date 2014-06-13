//
//  SideMenuViewController.m
//  farm
//
//  Created by liuyang on 14-5-14.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "SideMenuViewController.h"
#import "SWRevealViewController.h"

@interface SideMenuViewController ()

@end

@implementation SideMenuViewController

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
    _menuItems = @[@"smcHome", @"smcReservation", @"smcMyfarm", @"smcCookbook", @"smcSettings"];
    
    _menuList.backgroundColor = [UIColor clearColor];
    
    double version = [[UIDevice currentDevice].systemVersion doubleValue];
    if (version >= 7.0) {
        UIView* topBlackbar = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 20)];
        topBlackbar.backgroundColor = [UIColor blackColor];
        [self.view addSubview: topBlackbar];
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
- (void) prepareForSegue: (UIStoryboardSegue *) segue sender: (id) sender
{
        // configure the segue.
    if ( [segue isKindOfClass: [SWRevealViewControllerSegue class]] )
    {
        SWRevealViewControllerSegue* rvcs = (SWRevealViewControllerSegue*) segue;
        
        SWRevealViewController* rvc = self.revealViewController;
        NSAssert( rvc != nil, @"oops! must have a revealViewController" );
        
        NSAssert( [rvc.frontViewController isKindOfClass: [UINavigationController class]], @"oops!  for this segue we want a permanent navigation controller in the front!" );
        
        rvcs.performBlock = ^(SWRevealViewControllerSegue* rvc_segue, UIViewController* svc, UIViewController* dvc)
        {
            UINavigationController* nc = [[UINavigationController alloc] initWithRootViewController:dvc];
            [rvc pushFrontViewController:nc animated:YES];
        };
    }
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.menuItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = [self.menuItems objectAtIndex: [indexPath row]];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier forIndexPath: indexPath];
    
    cell.backgroundColor = [UIColor clearColor];
    cell.contentView.backgroundColor = [UIColor clearColor];
    
    UIColor* color = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"menu_selected.png"]];
    //UIColor *color = [[UIColor alloc]initWithRed:98/255.0 green:217/255.0 blue:176/255.0 alpha:0.8];//通过RGB来定义自己的颜色
    cell.selectedBackgroundView = [[UIView alloc] initWithFrame:cell.frame];
    cell.selectedBackgroundView.backgroundColor = color;
    
    return cell;
}

@end
