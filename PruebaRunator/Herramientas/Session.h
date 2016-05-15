//
//  Session.h
//  -911Chic
//
//  Created by Gabriel on 8/28/15.
//  Copyright (c) 2015 Orusnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Runner.h"

@interface Session : NSObject

+ (Runner *) getRunner;
+ (void) setRunner : (Runner*) user;
+ (void) setImagen : (Imagenes*) img;
+ (Imagenes *) getImagen;


+(void)setListaDeAlertas:(NSMutableArray *)lista;

+(NSMutableArray *)getListaDeAlertas;
@end
