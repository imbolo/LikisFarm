//
//  ZButtonGroupItem.m
//  farm
//
//  Created by liuyang on 14-5-21.
//  Copyright (c) 2014年 mrcoder. All rights reserved.
//

#import "ZButtonGroupItem.h"

@implementation ZButtonGroupItem

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    NSLog(@"init button group item");
    return self;
}

//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
//    if (self.state == UIControlStateHighlighted) {
//        [self setHighlighted: YES];
////        [self setSelected:YES];
//    }
//    else if (self.state == UIControlStateNormal) {
//        [self setSelected: YES];
//    }
//    else if (self.state == UIControlStateSelected) {
//        [self setSelected:NO];
//    }
//}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
