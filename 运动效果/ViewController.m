//
//  ViewController.m
//  运动效果
//
//  Created by 霍文轩 on 16/1/29.
//  Copyright © 2016年 霍文轩. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *back;
@property (weak, nonatomic) IBOutlet UIImageView *fairy;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    
    // 需要在手机的系统设置的辅助功能中关闭减弱动态效果
    
    // 设置仙女的运动效果 ===== BEGIN =====
    // 设置在x轴的偏移范围
    UIInterpolatingMotionEffect * fairyEffX = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];// type表示沿水平方向运行效果
    fairyEffX.maximumRelativeValue = @(50);
    fairyEffX.minimumRelativeValue = @(-50);
    // 为view添加运动效果
    [self.fairy addMotionEffect:fairyEffX];
    
    UIInterpolatingMotionEffect * fairyEffY = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    fairyEffY.maximumRelativeValue = @(50);
    fairyEffY.minimumRelativeValue = @(-50);
    [self.fairy addMotionEffect:fairyEffY];
    
    
    // 设置背景的运动效果 ===== BEGIN =====
    UIInterpolatingMotionEffect * backEffX = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];// type表示沿水平方向运行效果
    backEffX.maximumRelativeValue = @(-100);
    backEffX.minimumRelativeValue = @(100);
    [self.back addMotionEffect:backEffX];
    
    UIInterpolatingMotionEffect * backEffY = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    backEffY.maximumRelativeValue = @(-100);
    backEffY.minimumRelativeValue = @(100);
    [self.back addMotionEffect:backEffY];
}

@end
