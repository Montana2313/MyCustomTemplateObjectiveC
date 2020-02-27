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
//Items
// setupView içersinde fonksiyonlar aracığılıyla tanımlama yapılacak objective c ile
@synthesize denemeButton;
@synthesize denemeTextField;
- (void)viewDidLoad {
    [super viewDidLoad];
    printf("This is ViewController");
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupViews];
    [self animationFrame:[GeneralClass getDeviceModel]];
    [self setupFrames:[GeneralClass getDeviceModel]];
}
- (void)denemeButtonTapped:(UIButton*)sender{
    [GeneralClass open_page:Anasayfa withParams:@"" currentWindow:self.view.window];
}
- (void)setupViews {
    [self denemeButtonCreate];
    [self denemeTextFieldCreate];
    [self.view addSubview:denemeTextField];
    [self.view addSubview:denemeButton];
}
-(void) denemeButtonCreate{
    denemeButton = [DefaultItems defButton:@"Deneme button" andButtonColor:UIColor.yellowColor];
    [denemeButton addTarget:self action:@selector(denemeButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
}
-(void) denemeTextFieldCreate{
    denemeTextField = [DefaultItems defTextField:@"Deneme Textfield" andHolderColor:UIColor.blueColor];
}
- (void)setupFrames:(PhoneType)phoneType {
    denemeButton.frame = CGRectMake(([GeneralClass screenWidth] / 2 ) -50, ([GeneralClass screenHeight] / 2 ) -25, 100, 50);
    denemeTextField.frame = CGRectMake(([GeneralClass screenWidth] / 2 ) -50, ([GeneralClass screenHeight] / 2 ) +55, 100, 50);
}
- (void)animationFrame:(PhoneType)phoneType {
    
}
@end
