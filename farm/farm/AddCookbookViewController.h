//
//  AddCookbookViewController.h
//  farm
//
//  Created by liuyang on 14-5-23.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "ViewController.h"

@interface AddCookbookViewController : WhiteBaseViewController


@property (retain, nonatomic) UIButton* tab1;
@property (retain, nonatomic) UIButton* tab2;
@property (retain, nonatomic) UIButton* tab3;

@property (retain, nonatomic) UIView* slideContainer;
@property (retain, nonatomic) UIView* view1;
@property (retain, nonatomic) UIView* view2;
@property (retain, nonatomic) UIView* view3;

@property (weak, nonatomic) IBOutlet UINavigationItem *navItem;

@property (retain, nonatomic) UINavigationItem* nextButton;

@property (retain, nonatomic) UINavigationItem* okButton;

@end
