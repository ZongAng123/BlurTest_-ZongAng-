//
//  ViewController.m
//  BlurTest_(ZongAng)
//
//  Created by mac on 16/7/30.
//  Copyright © 2016年 纵昂. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ImageEffects.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *imageView = [[UIImageView alloc]init];
    
    UIImage *image = [UIImage imageNamed:@"flower.jpeg"];
    //    扩展类的方法
    image = [image applyLightEffect];
    
    imageView.frame = self.view.frame;
    
    imageView.image = image;
    
    [self.view addSubview:imageView];
    
    /*
//    创建模糊类的对象，并指定模糊类型
     UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
     
//    创建可视化模糊视图
     UIVisualEffectView *visualView = [[UIVisualEffectView alloc]initWithEffect:blurEffect];
     
//    模糊区域
     visualView.frame = self.view.frame;
     
//    设置模糊视图透明度
     visualView.alpha = 0.7;
     
//    把模糊视图添加到父视图上
//    [self.view addSubview:visualView];
     [imageView addSubview:visualView];
     
     
    */
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
