//
//  AddCookbookViewController.m
//  farm
//
//  Created by liuyang on 14-5-23.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "AddCookbookViewController.h"

static int topDIS = 20 + 44;

int currentIndex = 0;

@interface AddCookbookViewController ()

@property NSArray* tabs;

@end

@implementation AddCookbookViewController

@synthesize slideContainer;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



- (void)initUI
{
    CGRect aScreenRect = [[UIScreen mainScreen] bounds];
    
    UIView* statusBar = [[UIView alloc] initWithFrame:CGRectMake(0, 0, aScreenRect.size.width, 20)];
    statusBar.backgroundColor = [UIColor blackColor];
    [self.view addSubview:statusBar];
    
    UINavigationBar *nav = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, aScreenRect.size.width, 44)];
    UINavigationItem *NavTitle = [[UINavigationItem alloc] initWithTitle:@"详细介绍"];
    [nav pushNavigationItem:NavTitle animated:YES];
//    [self.view addSubview:nav];

    //step1
    self.tab1 = [[UIButton alloc] initWithFrame:CGRectMake(0, -1 + topDIS, 107, 65)];
    [self.tab1 setBackgroundImage:[UIImage imageNamed:@"addStep1Normal.png"] forState:UIControlStateNormal];
    [self.tab1 setBackgroundImage:[UIImage imageNamed:@"addStep1Selected.png"] forState:UIControlStateSelected];
    [self.tab1 setContentEdgeInsets:(UIEdgeInsetsMake(-8, 0, 0, 0))];
    [self.tab1 addTarget:self action:@selector(btnStepClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.tab1];
    [self.tab1 setSelected:YES];
    
    //step2
    self.tab2 = [[UIButton alloc] initWithFrame:CGRectMake(107, -1 + topDIS, 107, 65)];
    [self.tab2 setBackgroundImage:[UIImage imageNamed:@"addStep2Normal.png"] forState:UIControlStateNormal];
    [self.tab2 setBackgroundImage:[UIImage imageNamed:@"addStep2Selected.png"] forState:UIControlStateSelected];
    [self.tab2 setContentEdgeInsets:(UIEdgeInsetsMake(-8, 0, 0, 0))];
    [self.tab2 addTarget:self action:@selector(btnStepClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.tab2];
    
    //step3
    self.tab3 = [[UIButton alloc] initWithFrame:CGRectMake(107*2, -1 + topDIS, 107, 65)];
    [self.tab3 setBackgroundImage:[UIImage imageNamed:@"addStep3Normal.png"] forState:UIControlStateNormal];
    [self.tab3 setBackgroundImage:[UIImage imageNamed:@"addStep3Selected.png"] forState:UIControlStateSelected];
    [self.tab3 setContentEdgeInsets:(UIEdgeInsetsMake(-8, 0, 0, 0))];
    [self.tab3 addTarget:self action:@selector(btnStepClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.tab3];
    
    
    //slider container
    slideContainer = [[UIView alloc] initWithFrame:CGRectMake(0, 55 + topDIS, 320 * 3, 480)];
    _view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 580)];
    _view2 = [[UIView alloc] initWithFrame:CGRectMake(320, 0, 320, 580)];
    _view3 = [[UIView alloc] initWithFrame:CGRectMake(320 * 2, 0, 320, 580)];
    
    _view1.backgroundColor = [UIColor clearColor];
    _view2.backgroundColor = [UIColor clearColor];
    _view3.backgroundColor = [UIColor clearColor];
    
    [slideContainer addSubview:_view1];
    [slideContainer addSubview:_view2];
    [slideContainer addSubview:_view3];

    [self.view addSubview:slideContainer];
    self.slideContainer.layer.zPosition = -1;
    
    
    //tab contents
    //view1
    UIImageView* tmp1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tmp_step1.png"]];
    tmp1.frame = CGRectMake(25, 20, 271, 357);
    [self.view1 addSubview:tmp1];
    
    //view2
    UIImageView* tmp2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tmp_step2.png"]];
    tmp2.frame = CGRectMake(0, 0, 320, 631);
    UIScrollView* stepScroll = [[UIScrollView alloc] initWithFrame: CGRectMake(0, 0, 320, 360)];
    [self.view2 addSubview:stepScroll];
    stepScroll.contentSize = CGSizeMake(320, 631);
    [stepScroll addSubview:tmp2];
    
    //view1
    UIImageView* tmp3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tmp_step3.png"]];
    tmp3.frame = CGRectMake(0, 0, 320, 359);
    [self.view3 addSubview:tmp3];
    
    //dashed line
    UIImageView* dashedLine1 = [[UIImageView alloc] initWithFrame:CGRectMake(107, 0 + topDIS, 1, 55)];
    [dashedLine1 setImage:[UIImage imageNamed:@"dashedLine.png"]];
    [self.view addSubview: dashedLine1];
    dashedLine1.layer.zPosition = 100;
    UIImageView* dashedLine2 = [[UIImageView alloc] initWithFrame:CGRectMake(107*2, 0 + topDIS, 1, 55)];
    [dashedLine2 setImage:[UIImage imageNamed:@"dashedLine.png"]];
    [self.view addSubview: dashedLine2];
    dashedLine2.layer.zPosition = 100;
}

- (void)initNavigationBar
{
    
    self.nextButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"iconNext.png"] style:UIBarButtonItemStyleDone target:self action:@selector(next:)];
    
    self.navItem.rightBarButtonItem = self.nextButton;
    
    
    self.okButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"checkRight.png"] style:UIBarButtonItemStyleDone target:self action:@selector(cancelAddCookbook:)];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initUI];
    [self initNavigationBar];
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

- (IBAction)btnStepClicked:(id)sender {
    
    [self.tab1 setSelected:NO];
    [self.tab2 setSelected:NO];
    [self.tab3 setSelected:NO];
    
    UIButton* btn = (UIButton*) sender;
    [btn setSelected: YES];
    
    int index = 0;
    if (btn == self.tab1) {
        index = 0;
    }
    else if (btn == self.tab2) {
        index = 1;
    }
    else if (btn == self.tab3) {
        index = 2;
    }
    currentIndex = index;

    
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

- (IBAction)next:(id)sender
{
    currentIndex ++ ;
    if (currentIndex == 2) {

        self.navItem.rightBarButtonItem = self.okButton;
//        return;
    }
    
    [self.tab1 setSelected:NO];
    [self.tab2 setSelected:NO];
    [self.tab3 setSelected:NO];
    
    switch (currentIndex) {
        case 0:
            [self.tab1 setSelected:YES];
            break;
        case 1:
            [self.tab2 setSelected:YES];
            break;
        case 2:
            [self.tab3 setSelected:YES];
            break;
            
        default:
            break;
    }
    
    //slide view
    [UIView animateWithDuration:0.3
                          delay:0
                        options:UIViewAnimationCurveEaseOut
                     animations:^
     {
         CGRect frame = slideContainer.frame;
         //         frame.origin.y = 0;
         frame.origin.x = -(320 * (currentIndex));
         slideContainer.frame = frame;
         
     }
                     completion:^(BOOL finished)
     {
         NSLog(@"Fade out Completed");
         //              [splashView ];
     }];
}

- (IBAction)cancelAddCookbook:(id)sender
{
    currentIndex = 0;
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
