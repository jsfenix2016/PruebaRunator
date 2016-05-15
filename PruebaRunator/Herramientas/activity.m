//
//  activity.m
//  -911Chic
//
//  Created by Gabriel on 8/18/15.
//  Copyright (c) 2015 Orusnet. All rights reserved.
//

#import "activity.h"
#define DIMENCIONES_PANTALLA [[UIScreen mainScreen] bounds]
#define NOTIFICATION_START_ACTIVITY_INDICATOR @"startActivityIndicator"

UIActivityIndicatorView * indicador1;
@implementation activity

UIViewController * presented;
UIViewController * lastPresented;

+(UIViewController *)getPresented
{
    return presented;
}

+(UIViewController *)getLastPresented
{
    return lastPresented;
}

+(void)setPresented:(UIViewController *)vc1
{
    presented = vc1;
}

-(UIActivityIndicatorView *)activity
{
    return indicador1;
}

-(id)init
{
    self = [super init];
    if (self)
    {
        [self setBackgroundColor:COLOR_INDICADOR_ACT];
        [self setAlpha:TRANSPARENCIA_INDICADOR_ACT];
        [self setFrame:CGRectMake(0, 99, 340, 480)];
        
        indicador1 = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        
        [indicador1 setCenter:[self center]];
        [self addSubview:indicador1];
        [indicador1 startAnimating];
      
    }
    return self;
}

+(void)iniciarAnimacionEnVista2:(UIViewController *)vista1
{
    if (!indicador1)
    {
        indicador1 = [[activity alloc]init];
        
    }
    
    [[UIApplication sharedApplication].keyWindow addSubview:indicador1];
 
}

+(void)detenerAnimacionEnVista:(UIViewController *)vista
{
    if (indicador1)
    {
        [indicador1 removeFromSuperview];
        indicador1 = nil;
    }
}
@end
