//
//  ViewController.m
//  TomCat
//
//  Created by 姚犇 on 15/8/21.
//  Copyright (c) 2015年 姚犇. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *tomImageView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}
//
//- (void)tomCatAnimationWithName:(NSString *)name andCount:(NSUInteger)count
//{
//    NSMutableArray *animationArr = [NSMutableArray array];
//    
//    for (int i = 0; i < count ; i ++) {
//        NSString *imageName = [NSString stringWithFormat:@"%@_%02d.jpg",name,i];
//        UIImage *image = [UIImage imageNamed:imageName];
//        [animationArr addObject:image];
//    }
//    
//    self.tomImageView.animationImages = animationArr;
//    
//    self.tomImageView.animationDuration = animationArr.count * 0.075;
//    
//    self.tomImageView.animationRepeatCount = 1;
//    
//    [self.tomImageView startAnimating];
//}
//- (IBAction)eat:(id)sender
//{
//    [self tomCatAnimationWithName:@"eat" andCount:40];
//}
//- (IBAction)drink:(id)sender
//{
//   [self tomCatAnimationWithName:@"drink" andCount:81];
//}

- (IBAction)tomAnimation:(UIButton *)button
{
    // 如果正在动画直接结束
    if ([self.tomImageView isAnimating]) return;
    
    NSMutableArray *animationArr = [NSMutableArray array];
    
    for (int i = 0; i < button.tag ; i ++) {
        NSString *imageName = [NSString stringWithFormat:@"%@_%02d.jpg",button.currentTitle,i];
        UIImage *image = [UIImage imageNamed:imageName];
        [animationArr addObject:image];
    }
    
    self.tomImageView.animationImages = animationArr;
    
    self.tomImageView.animationDuration = animationArr.count * 0.075;
    
    self.tomImageView.animationRepeatCount = 1;
    
    [self.tomImageView startAnimating];
    
}


@end
