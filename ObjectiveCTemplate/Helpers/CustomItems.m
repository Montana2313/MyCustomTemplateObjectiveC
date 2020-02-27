//
//  CustomItems.m
//  ObjectiveCTemplate
//
//  Created by Mac on 27.02.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CustomItems.h"
#import <UIKit/UIKit.h>
#import "Generals.h"
#import "DefaultItems.h"

@implementation CustomItems

+ (void)roundedView25:(UIView *)view{
    view.layer.cornerRadius = view.frame.size.width / 25.0;
    view.layer.masksToBounds = YES;
    view.clipsToBounds = YES;
}
+ (void)roundedButton25:(UIButton *)button{
    button.layer.cornerRadius = button.frame.size.width / 25.0;
    button.layer.masksToBounds = YES;
    button.clipsToBounds = YES;
}
+ (void)roundedTextfield25:(UITextField *)textfield{
    textfield.layer.cornerRadius = textfield.frame.size.width / 25.0;
    textfield.layer.masksToBounds = YES;
    textfield.clipsToBounds = YES;
}
+ (void)roundedImageView:(UIImageView *)imageView{
    imageView.layer.cornerRadius = imageView.frame.size.width / 25.0;
    imageView.layer.masksToBounds = YES;
    imageView.clipsToBounds = YES;
}
+ (void)customAppBarButtons:(UIButton *)leftButton rightSide:(UIButton *)rightButton currentView:(UIView *)view{
    leftButton.frame = CGRectMake(20, 40, 45, 40);
    rightButton.frame = CGRectMake([GeneralClass screenWidth] -50, 40, 45, 40);
    [view addSubview:leftButton];
    [view addSubview:rightButton];
}
+ (void)customTabbarSelector:(int)countOfItems andCurrentView:(UIView *)view andSelectorColor:(UIColor *)color{
    if (countOfItems == 2) {
        double value = view.frame.size.width / 2;
        UIView *selector = [DefaultItems defView:color];
        selector.frame = CGRectMake(value - 20,0, 20, view.frame.size.height);
        [view addSubview:selector];
    }else if (countOfItems == 3) {
        double value = view.frame.size.width / 3;
        UIView *selector = [DefaultItems defView:color];
        selector.frame = CGRectMake(value - 10,0,20, view.frame.size.height);
        [view addSubview:selector];
        UIView *selector2 = [DefaultItems defView:color];
        selector2.frame = CGRectMake(value + value - 10,0,20,view.frame.size.height);
        [view addSubview:selector2];
    }else if (countOfItems == 4) {
        double value = view.frame.size.width / 4;
        UIView *selector = [DefaultItems defView:color];
        selector.frame = CGRectMake(value - 10,0,20, view.frame.size.height);
        [view addSubview:selector];
        UIView *selector2 = [DefaultItems defView:color];
        selector2.frame = CGRectMake(value + value - 10,0,20,view.frame.size.height);
        [view addSubview:selector2];
        UIView *selector3 = [DefaultItems defView:color];
        selector3.frame = CGRectMake(value + value + value - 10,0,20,view.frame.size.height);
        [view addSubview:selector3];
    }
    
    
}



@end
