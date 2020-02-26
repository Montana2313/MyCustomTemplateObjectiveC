//
//  DefaultItems.m
//  ObjectiveCTemplate
//
//  Created by Mac on 26.02.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "DefaultItems.h"
#import "Generals.h"


@implementation DefaultItems

+ (UITextField *)defTextField:(NSString *)placeholder andHolderColor:(UIColor *)color{
    UITextField *textfield = [[UITextField alloc] init];
    textfield.attributedPlaceholder = [[NSAttributedString alloc] initWithString:placeholder attributes:@{NSForegroundColorAttributeName: color}];
    textfield.textColor = UIColor.blackColor;
    textfield.textAlignment = NSTextAlignmentCenter;
    textfield.backgroundColor = UIColor.whiteColor;
    return textfield;
}
+ (UIButton *)defButton:(NSString *)text andButtonColor:(UIColor *)color{
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:text forState:UIControlStateNormal];
    button.backgroundColor = color;
    return button;
}
+ (UIButton *)defButtonWithImageName:(NSString *)imageString{
    UIButton *button = [[UIButton alloc] init];
    UIImage *image = [UIImage imageNamed:imageString];
    [button setBackgroundImage:image forState:UIControlStateNormal];
    return  button;
}
+ (UILabel *)defLabel:(NSString *)text andLabelColor:(UIColor *)color{
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.textColor = color;
    return label;
}
+ (UIView *)defView:(UIColor *)color{
    UIView *view = [[UIView alloc] init];
    view.layer.borderWidth = 1.0;
    view.layer.borderColor = UIColor.whiteColor.CGColor;
    view.backgroundColor = color;
    return view;
}
+ (UITableView *)defTableView:(id)registerClass{
    UITableView *tableView = [[UITableView alloc] init];
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    if (registerClass != NULL){
        [tableView registerClass:registerClass forCellReuseIdentifier:@"cell"];
    }
    tableView.backgroundColor = UIColor.clearColor;
    return tableView;
}
+ (UIView *)defAppBar:(UIColor *)color text:(NSString *)textString labelColor:(UIColor *)labelcolor{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0,[GeneralClass screenWidth],80)];
    view.backgroundColor = color;
    UILabel *label = [self defLabel:textString andLabelColor:labelcolor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont fontWithName:@"Helvetica" size:20.0];
    label.frame = CGRectMake(([GeneralClass screenWidth] / 2) -50, 40, 100, 40);
    [view addSubview:label];
    return view;
}
+ (UISearchBar *)defSearchBar:(NSString *)placeHolder{
    UISearchBar *searchBar = [[UISearchBar alloc] init];
    searchBar.searchBarStyle = UISearchBarStyleMinimal;
    searchBar.placeholder = placeHolder;
    searchBar.backgroundColor = UIColor.clearColor;
    searchBar.searchTextField.textColor = UIColor.blackColor;
    searchBar.translucent = false;
    [searchBar sizeToFit];
    return searchBar;
}
+ (UIView *)defTabbar:(UIColor *)color{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, [GeneralClass screenHeight] -80, [GeneralClass screenWidth], 80)];
    view.backgroundColor = color;
    return view;
}
@end
