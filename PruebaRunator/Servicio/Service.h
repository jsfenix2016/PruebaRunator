//
//  Service.h
//  -911Chic
//
//  Created by Javier Santana on 8/5/15.
//  Copyright (c) 2015 Orusnet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Service : NSObject

+(NSArray *)ConsultCatalog:(NSArray*)catalog min:(int)min max:(int)max;

+(NSArray *)ProductDetail:(NSString *)catalog;

+(NSArray *)ServiceRegister:(NSString*)name  firtsname:(NSString*)firstname lastname:(NSString*)lastname date:(NSString*)date email:(NSString*)email pass:(NSString*)password;

+ (NSArray *)crearTarjeta: (void (^)(id))success failureBlock:(void (^)(NSError *))failure;
+ (NSArray *)ConsultaNuevasCarreras: (void (^)(id))success failureBlock:(void (^)(NSError *))failure;
@end
