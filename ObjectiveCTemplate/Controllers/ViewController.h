//
//  ViewController.h
//  ObjectiveCTemplate
//
//  Created by Mac on 19.02.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Generals.h"

@interface ViewController : UIViewController <SetupViews>

// Atomic : Tanımlanmış propertylerinin getter ve setterları thread safe olarak çalışır
// yani ne olursa olsun getter setterdaki thread işlemleri diğerlerine bakılmaksızın tamamlandır

// Nonatamic : Tanımlanmış property'nin thread safe değişdirdir. Diğer threadlerden etkilenebilir
// nonatamic atomic'e göre daha hızlıdır.Fakat güvenliksizdir.

// Strong referanslar, nesneler siz onlara nil (null) bir değer atamadığınız sürece yaşamlarını sürdürmelerini sağlar
// Weak olarak tanımlanan referans, bir nesnenin otomatik olarak nil tanımlanabileceğini söyler. Bu işlem sizin nesnenize strong bir referans olmadığı zaman yapılır


@property(nonatomic , retain) UIButton *denemeButton;
@property(nonatomic,retain) UITextField *denemeTextField;

@end

