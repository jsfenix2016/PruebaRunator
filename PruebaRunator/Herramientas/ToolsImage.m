//
//  ToolsImage.m
//  -911Chic
//
//  Created by Gabriel on 8/12/15.
//  Copyright (c) 2015 Orusnet. All rights reserved.
//

#import "ToolsImage.h"

@implementation ToolsImage


+(UIImage *)convertStringImage:(NSString *)string
{

    NSURL* urlImage = [NSURL URLWithString:string];
    
    // Creamos la conexión de datos
    NSURLRequest *request = [NSURLRequest requestWithURL:urlImage cachePolicy:NSURLCacheStorageNotAllowed timeoutInterval:30.0];
    
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    
    UIImage *ret =[UIImage imageWithData:response];

    return ret;
}
@end
