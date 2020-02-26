//
//  ViewController.m
//  ObjectiveCTemplate
//
//  Created by Mac on 19.02.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import "ViewController.h"
#import "Generals.h"
#import "DefaultItems.h"


@interface ViewController ()

@end

@implementation ViewController
@synthesize denemeButton;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    printf("This is ViewController");
    self.view.backgroundColor = [UIColor whiteColor];
//    double screenHeight = [GeneralClass screenHeight];
//    double screenWidth = [GeneralClass screenWidth];
//    
//    printf("Veri alındı");
//    NSString *str = GeneralClass.currentUserId;
//    PhoneType phone = [GeneralClass getDeviceModel];
    [self setupViews];
    [self animationFrame:[GeneralClass getDeviceModel]];
    [self setupFrames:[GeneralClass getDeviceModel]];
}
- (void)setupViews {
    denemeButton = [DefaultItems defButton:@"Deneme button" andButtonColor:UIColor.yellowColor];
    denemeButton.frame = CGRectMake(([GeneralClass screenWidth] / 2 ) -50, ([GeneralClass screenHeight] / 2 ) -25, 50, 50);
    
    
    
    [self.view addSubview:denemeButton];
}
- (void)setupFrames:(PhoneType)phoneType {
    
}
- (void)animationFrame:(PhoneType)phoneType {
    
}
@end
