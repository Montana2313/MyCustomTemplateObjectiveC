//
//  Generals.h
//  ObjectiveCTemplate
//
//  Created by Mac on 19.02.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#ifndef Generals_h
#define Generals_h


#endif /* Generals_h */

typedef enum {
    iPhoneXR,
    iPhoneX,
    iPhoneXSMax,
    iPhone8Plus,
    iPhone8,
    iPhoneSE,
    Hata
} PhoneType;
typedef enum {
   Anasayfa
} PageType;

@protocol SetupViews <NSObject>
@required
-(void)setupViews;
-(void)setupFrames:(PhoneType)phoneType;
-(void)animationFrame:(PhoneType)phoneType;
@end


@interface GeneralClass : NSObject

+(CGFloat) screenHeight;
+(CGFloat) screenWidth;
+(PhoneType) getDeviceModel;
+(NSString *) currentUserId;
+(void)open_page:(PageType)pageType withParams:(NSString*)param currentWindow:(UIWindow*)window;
+(void) seguePage:(UIViewController*)targerController currentWindow:(UIWindow*)window;

@end
