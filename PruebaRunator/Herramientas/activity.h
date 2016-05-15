//
//  activity.h
//  -911Chic
//
//  Created by Gabriel on 8/18/15.
//  Copyright (c) 2015 Orusnet. All rights reserved.
//

#import <UIKit/UIKit.h>
#define TRANSPARENCIA_INDICADOR_ACT 0.75
#define COLOR_INDICADOR_ACT [UIColor blackColor]

//UIViewController * vistaAnterior;
//UIActivityIndicatorView * activityIndicator;
@interface activity : UIView

+(UIViewController *)getPresented;
+(void)setPresented:(UIViewController *)vc1;

+(void)iniciarAnimacionEnVista2:(UIViewController *)vista1;
+(void)detenerAnimacionEnVista:(UIViewController *)vista;

@end
