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

@synthesize topImageView;
@synthesize slideContainer;

- (void) initUI
{
    //top scalable image
    //    self.topImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"centerTopImage.png"]];
    //    self.topImageView.frame = CGRectMake(0, 0, ImageWidth, ImageHeight);
    //    [self.view addSubview:self.topImageView];
    
    //scroll view
    //    self.bottomScrollView = [[UIScrollView alloc] init];
    //    self.bottomScrollView.delegate = self;
    //    self.bottomScrollView.contentSize = CGSizeMake(320, 480);
    //    [self.view addSubview:self.bottomScrollView];
    self.bottomContainer = [[UIView alloc] initWithFrame:CGRectMake(0, 240, 320, 50)];
    self.bottomContainer.backgroundColor = [UIColor purpleColor];
    [self.bottomScrollView addSubview:self.bottomContainer];
    
    self.fixedContainer = [[UIView alloc] initWithFrame:CGRectMake(0, 64, 320, 50)];
    self.fixedContainer.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.fixedContainer];
    [self.fixedContainer setHidden:YES];
    
    
    //button group
    [self initTab];
    
    //add image list for test
    _cookbookList = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tmp_cblist.png"]];
    _cookbookList.frame = CGRectMake(0, 20, 320, 480);
    [self.view1 addSubview:_cookbookList];
    
  }

- (void) initTab
{
    //tab1
    self.tab1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 106, 64)];
    [self.tab1 setBackgroundImage:[UIImage imageNamed:@"buttonGroupNormal.png"] forState:UIControlStateNormal];
    [self.tab1 setBackgroundImage:[UIImage imageNamed:@"buttonGroupSelected.png"] forState:UIControlStateSelected];
    [self.tab1 setTitle:@"食谱" forState:UIControlStateNormal];
    [self.tab1 setContentEdgeInsets:(UIEdgeInsetsMake(-8, 0, 0, 0))];
    [self.tab1 addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.bottomContainer addSubview:self.tab1];
    [self.tab1 setSelected:YES];
    
    //tab2
    self.tab2 = [[UIButton alloc] initWithFrame:CGRectMake(106, 0, 106, 64)];
    [self.tab2 setBackgroundImage:[UIImage imageNamed:@"buttonGroupNormal.png"] forState:UIControlStateNormal];
    [self.tab2 setBackgroundImage:[UIImage imageNamed:@"buttonGroupSelected.png"] forState:UIControlStateSelected];
    [self.tab2 setTitle:@"粉丝" forState:UIControlStateNormal];
    [self.tab2 setContentEdgeInsets:(UIEdgeInsetsMake(-8, 0, 0, 0))];
    [self.tab2 addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.bottomContainer addSubview:self.tab2];
    
    //tab3
    self.tab3 = [[UIButton alloc] initWithFrame:CGRectMake(212, 0, 108, 64)];
    [self.tab3 setBackgroundImage:[UIImage imageNamed:@"buttonGroupNormal.png"] forState:UIControlStateNormal];
    [self.tab3 setBackgroundImage:[UIImage imageNamed:@"buttonGroupSelected.png"] forState:UIControlStateSelected];
    [self.tab3 setTitle:@"关注" forState:UIControlStateNormal];
    [self.tab3 setContentEdgeInsets:(UIEdgeInsetsMake(-8, 0, 0, 0))];
    [self.tab3 addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.bottomContainer addSubview:self.tab3];
    
    
    //slider container
    slideContainer = [[UIView alloc] initWithFrame:CGRectMake(0, 290, 320 * 3, 480)];
    _view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 580)];
    _view2 = [[UIView alloc] initWithFrame:CGRectMake(320, 0, 320, 580)];
    _view3 = [[UIView alloc] initWithFrame:CGRectMake(320 * 2, 0, 320, 580)];
    
    _view1.backgroundColor = [UIColor clearColor];
    _view2.backgroundColor = [UIColor greenColor];
    _view3.backgroundColor = [UIColor blueColor];
    
    [slideContainer addSubview:_view1];
    [slideContainer addSubview:_view2];
    [slideContainer addSubview:_view3];
    
    [self.bottomScrollView addSubview:slideContainer];
    self.slideContainer.layer.zPosition = -1;

}

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
    
    
    
    //fixed button group
    if (yOffset < 176.0) {
        [self.fixedContainer setHidden:YES];
        [self.bottomScrollView addSubview:self.bottomContainer];
        self.bottomContainer.frame = CGRectMake(0, 240, self.bottomContainer.frame.size.width, self.bottomContainer.frame.size.height);
    }
    else {
        [self.fixedContainer setHidden:NO];
        [self.fixedContainer addSubview:self.bottomContainer];
        self.bottomContainer.frame = CGRectMake(0, 0, self.bottomContainer.frame.size.width, self.bottomContainer.frame.size.height);
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
    //    self.bottomScrollView.contentSize = CGSizeMake(320, 960+ImageHeight);
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.bottomScrollView setContentSize:CGSizeMake(320, 960)];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initUI];
    
    //侧边菜单
    [self.revealButtonItem setTarget: self.revealViewController];
    [self.revealButtonItem setAction: @selector( revealToggle: )];
    [self.navigationController.navigationBar addGestureRecognizer: self.revealViewController.panGestureRecognizer];
    
    //    UIImageView *fakeView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Default.png"]];
    
    //    CGRect frame = fakeView.frame;
    //    frame.origin.y = ImageHeight;
    //    fakeView.frame = frame;
    
    self.bottomScrollView.delegate = self;
    self.bottomScrollView.backgroundColor = [UIColor clearColor];
    
    //    self.bottomScrollView.contentSize = CGSizeMake(320, 960+ImageHeight);
    
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

- (void)clickButton:(UIButton*)button{

    [self.tab1 setSelected:NO];
    [self.tab2 setSelected:NO];
    [self.tab3 setSelected:NO];
    [button setSelected:YES];

    int index = 0;
    if (button == self.tab1) {
        index = 0;
    }
    else if (button == self.tab2) {
        index = 1;
    }
    else if (button == self.tab3) {
        index = 2;
    }
    
    //slide view
    
    [UIView animateWithDuration:0.3
                          delay:0
                        options:UIViewAnimationCurveEaseOut
                     animations:^
     {
         CGRect frame = slideContainer.frame;
         //         frame.origin.y = 0;
         frame.origin.x = -(320 * (index));
         slideContainer.frame = frame;
         
     }
                     completion:^(BOOL finished)
     {
         NSLog(@"Fade out Completed");
         //              [splashView ];
     }];


}

@end
