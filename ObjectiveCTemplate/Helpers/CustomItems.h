//
//  CustomItems.h
//  ObjectiveCTemplate
//
//  Created by Mac on 27.02.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#ifndef CustomItems_h
#define CustomItems_h
#import <UIKit/UIKit.h>


#endif /* CustomItems_h */

@interface CustomItems : NSObject

+(void) roundedView25:(UIView*)view;
+(void) roundedButton25:(UIButton*)button;
+(void) roundedTextfield25:(UITextField*)textfield;
+(void) roundedImageView:(UIImageView*)imageView;
+(void) customAppBarButtons:(UIButton*)leftButton rightSide:(UIButton*)rightButton currentView:(UIView*)view;
+(void) customTabbarSelector:(int)countOfItems andCurrentView:(UIView*)view andSelectorColor:(UIColor*)color;
+(void) customTabbarButton:(int)totalItemsCount itemNumber:(int)number buttonItem:(UIButton*)button currentView:(UIView*)view;
@end
