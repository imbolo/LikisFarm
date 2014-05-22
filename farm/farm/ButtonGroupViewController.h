//
//  ButtonGroupViewController.h
//  farm
//
//  Created by liuyang on 14-5-21.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "ViewController.h"

@interface ButtonGroupViewController : BaseViewController

@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;

@property (weak, nonatomic) IBOutlet UIView *containerView;

@property UIButton* selectedButton;

@end
