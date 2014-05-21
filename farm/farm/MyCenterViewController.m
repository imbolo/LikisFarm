//
//  MyCenterViewController.m
//  farm
//
//  Created by liuyang on 14-5-21.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "MyCenterViewController.h"
#import "SWRevealViewController.h"

static CGFloat ImageHeight  = 180.0;
static CGFloat ImageWidth  = 320.0;

@interface MyCenterViewController ()

@end

@implementation MyCenterViewController

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    
//    int xStart;
//    // gt ios 7.0
//    if ([[UIDevice currentDevice].systemVersion doubleValue] >= 7.0) {
//        xStart = 20 + 44; // status bar height + top bar height
//    }
//    // lt ios 7.0
//    else {
//        xStart = 0;
//    }
    
    CGFloat yOffset = self.bottomScrollView.contentOffset.y;
    
    if (yOffset < 0) {
        
        CGFloat factor = ((ABS(yOffset)+ImageHeight)*ImageWidth)/ImageHeight;
        CGRect f = CGRectMake(-(factor-ImageWidth)/2, 0, factor, ImageHeight+ABS(yOffset));
        self.topImageView.frame = f;
    } else {
        CGRect f = self.topImageView.frame;
        f.origin.y = -yOffset;
        self.topImageView.frame = f;
    }
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    CGRect bounds = self.view.bounds;
    self.bottomScrollView.frame = bounds;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //侧边菜单
    [self.revealButtonItem setTarget: self.revealViewController];
    [self.revealButtonItem setAction: @selector( revealToggle: )];
    [self.navigationController.navigationBar addGestureRecognizer: self.revealViewController.panGestureRecognizer];
    
    
    //
    
//    UIImageView *fakeView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Default.png"]];
    
//    CGRect frame = fakeView.frame;
//    frame.origin.y = ImageHeight;
//    fakeView.frame = frame;
    
    self.bottomScrollView.delegate = self;
    self.bottomScrollView.backgroundColor = [UIColor clearColor];
//    self.bottomScrollView.contentSize = CGSizeMake(320, frame.size.height+ImageHeight);
    
//    [self.bottomScrollView addSubview:fakeView];
//    fakeView.layer.zPosition = -1;
    
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
