//
//  Generals.m
//  ObjectiveCTemplate
//
//  Created by Mac on 19.02.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestViewController.h"
#import <UIKit/UIKit.h>
#import "Generals.h"

@implementation GeneralClass
+ (CGFloat)screenHeight{
    return [[UIScreen mainScreen] bounds].size.height;
}
+ (CGFloat)screenWidth{
    return [[UIScreen mainScreen] bounds].size.width;
}
+ (NSString *)currentUserId{
    return @"User Id'si burada döner";
}
+ (PhoneType)getDeviceModel{
    double screenWidth = [GeneralClass screenWidth];
    double screenHeight = [GeneralClass screenHeight];
    if (screenWidth == 414.0 && screenHeight == 896.0){
        return iPhoneXR;
    }else if (screenWidth == 375.0 && screenHeight == 812.0){
        return iPhoneX;
    }else if (screenWidth == 414.0 && screenHeight == 896.0) {
        return iPhoneXSMax;
    }else if (screenWidth == 414.0 && screenHeight == 736.0){
        return iPhone8Plus;
    }else if (screenWidth == 375.0 && screenHeight == 667.0){
        return iPhone8;
    }else if (screenWidth == 320.0 && screenHeight == 568.0){
        return iPhoneSE;
    }else {
        return Hata;
    }
}
+ (void)open_page:(PageType)pageType withParams:(NSString *)param currentWindow:(UIWindow*)window{
    if(pageType == Anasayfa){
        // deneme
        TestViewController *tstViewController = [[TestViewController alloc] init];
        [GeneralClass seguePage:tstViewController currentWindow:window];
    }
}
+(void) seguePage:(UIViewController*)targerController currentWindow:(UIWindow*)window{
    
    [UIView transitionWithView:window duration:0.70 options:UIViewAnimationOptionTransitionFlipFromTop animations:^{
        UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:targerController];
        navController.navigationBarHidden = YES;
        window.rootViewController = navController;
        [window makeKeyAndVisible];
    } completion:nil];
}

@end
