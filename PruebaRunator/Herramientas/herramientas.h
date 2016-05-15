//
//  herramientas.h
//  
//
//  Created by Javier Santana on 03/10/14.
//
//

/*  Clase para uso de herramientas en la APP  */

#import <Foundation/Foundation.h>
#import "Alerts.h"

@interface herramientas : NSObject 

// metodo que da color rojo o verde a un monto si es negativo o positivo

+(NSArray *)getIr;
+(void)setIr:(NSArray *)setIr;

//muestra un mensaje al usuario
+(UIAlertView *)mostrarMensajeConTitulo:(NSString *)titulo cuerpoDeMensaje:(NSString *)cuerpoDeMensaje conBoton:(NSString *)textoEnBoton conBotones:(NSArray *)botones Delegado:(id)delegado;

+(NSArray *)validarArray:(id)array;


@end
