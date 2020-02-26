//
//  DefaultItems.h
//  ObjectiveCTemplate
//
//  Created by Mac on 26.02.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#ifndef DefaultItems_h
#define DefaultItems_h


#endif /* DefaultItems_h */

@interface DefaultItems : NSObject

+(UITextField*) defTextField:(NSString*)placeholder andHolderColor:(UIColor*)color;
+(UIButton*) defButton:(NSString*)text andButtonColor:(UIColor*)color;
+(UIButton*) defButtonWithImageName:(NSString*)imageString;
+(UILabel*) defLabel:(NSString*)text andLabelColor:(UIColor*)color;
+(UIView*) defView:(UIColor*)color;
+(UITableView*) defTableView:(id)registerClass;
+(UIView*) defAppBar:(UIColor*)color text:(NSString*)textString labelColor:(UIColor*)labelcolor;
+(UISearchBar*) defSearchBar:(NSString*)placeHolder;
+(UIView*) defTabbar:(UIColor*)color;
@end
