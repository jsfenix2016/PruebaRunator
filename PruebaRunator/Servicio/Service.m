//
//  Service.m
//  -911Chic
//
//  Created by Javier Santana on 8/5/15.
//  Copyright (c) 2015 Orusnet. All rights reserved.
//

#import "Service.h"
#import "herramientas.h"
#import "activity.h"

@implementation Service


NSString*ConsultCatalog;
NSArray * lista;

NSString *login=@"Bearer";
NSString *password=@"63bea7d5e84b6c45a4af9f9d3db714a8";
//
//Metodo para consultar catalogo de productos
// devuelve la lista de productos

+ (NSArray *)crearTarjeta: (void (^)(id))success failureBlock:(void (^)(NSError *))failure
{
    @try{
        
        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://github.com/login"]];
        
        [request setHTTPMethod:@"GET"];
        [request setValue:@"application/json" forHTTPHeaderField:@"content/Type"];
        
        
        NSString *authStr = [NSString stringWithFormat:@"%@:%@",login,password];
        NSData *authData = [authStr dataUsingEncoding:NSASCIIStringEncoding];
        NSString *authValue = [NSString stringWithFormat:@"Basic %@", [authData base64EncodedDataWithOptions:0]];
        [request setValue:authValue forHTTPHeaderField:@"Authorization"];
        
        NSURLSession *session = [NSURLSession sharedSession];
        
        
        [[session dataTaskWithRequest:request completionHandler:^(NSData *  data,NSURLResponse*  response2, NSError *  error){
            if (!error) {
                NSDictionary *responseDictionary= [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
                NSLog(@"DIC %@", responseDictionary);
                
                lista = [herramientas validarArray:responseDictionary];
                NSLog(@"Se le envio al servidor: %@",lista);
            }
            
            
        }]resume];
        
    }
    @catch (NSException *exception)
    {
        NSLog(@"createUser Error: %@", exception);
    }
   
return lista;
}

+ (NSArray *)ConsultaNuevasCarreras: (void (^)(id))success failureBlock:(void (^)(NSError *))failure
{
    @try{
        
        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://wispy-wave-1292.getsandbox.com/timeline/anyNewRun"]];
        
        [request setHTTPMethod:@"GET"];
        [request setValue:@"application/json" forHTTPHeaderField:@"content/Type"];
        
        
        NSString *authStr = [NSString stringWithFormat:@"%@:%@",login,password];
        NSData *authData = [authStr dataUsingEncoding:NSASCIIStringEncoding];
        NSString *authValue = [NSString stringWithFormat:@"Basic %@", [authData base64EncodedDataWithOptions:0]];
        [request setValue:authValue forHTTPHeaderField:@"Authorization"];
        
        NSURLSession *session = [NSURLSession sharedSession];
        
        
        [[session dataTaskWithRequest:request completionHandler:^(NSData *  data,NSURLResponse*  response2, NSError *  error){
            if (!error) {
                NSDictionary *responseDictionary= [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
                NSLog(@"DIC %@", responseDictionary);
                
                lista = [herramientas validarArray:responseDictionary];
                NSLog(@"Respondio el servidor: %@",lista);
            }
            
            
        }]resume];

    }
    @catch (NSException *exception)
    {
        NSLog(@"createUser Error: %@", exception);
    }
    return lista;
}




@end
