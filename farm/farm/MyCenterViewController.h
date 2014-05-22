//
//  MyCenterViewController.h
//  farm
//
//  Created by liuyang on 14-5-21.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "ViewController.h"
#import "WhiteBaseViewController.h"

@interface MyCenterViewController : WhiteBaseViewController<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *revealButtonItem;

@property (retain, nonatomic) IBOutlet  UIImageView *topImageView;

@property (retain, nonatomic) IBOutlet UIScrollView *bottomScrollView;

@property (weak, nonatomic) IBOutlet UIView *buttonGroupContainer;
@property (retain, nonatomic) UIView *fixedContainer;
@property (retain, nonatomic) UIView *bottomContainer;

@property (retain, nonatomic) UIButton* tab1;
@property (retain, nonatomic) UIButton* tab2;
@property (retain, nonatomic) UIButton* tab3;

@property (retain, nonatomic) UIView* slideContainer;
@property (retain, nonatomic) UIView* view1;
@property (retain, nonatomic) UIView* view2;
@property (retain, nonatomic) UIView* view3;


@property (retain, nonatomic) UIImageView* cookbookList;

@end
