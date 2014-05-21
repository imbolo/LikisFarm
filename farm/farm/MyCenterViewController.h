//
//  MyCenterViewController.h
//  farm
//
//  Created by liuyang on 14-5-21.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "ViewController.h"

@interface MyCenterViewController : BaseViewController<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *revealButtonItem;

@property (weak, nonatomic) IBOutlet UIImageView *topImageView;

@property (weak, nonatomic) IBOutlet UIScrollView *bottomScrollView;
@end
