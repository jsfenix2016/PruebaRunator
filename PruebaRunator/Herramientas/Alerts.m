//
//  Alerts.m
//  -911Chic
//
//  Created by Gabriel on 8/28/15.
//  Copyright (c) 2015 Orusnet. All rights reserved.
//

#import "Alerts.h"
#import "herramientas.h"

@implementation Alerts

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+(UIAlertView *)alertaCampoVacio:(id)delegado :(NSString *) campo
{
    UIAlertView * alert = [herramientas mostrarMensajeConTitulo:TITULO_ADVERTENCIA_STRING cuerpoDeMensaje: [NSString stringWithFormat:MSJ_CAMPO_VACIO,campo] conBoton:BOTON_OK_STRING conBotones:nil Delegado:delegado];
    
    return alert;
}

+(UIAlertView *)alertaMensaje:(id)delegado :(NSString *) campo
{
    UIAlertView * alert = [herramientas mostrarMensajeConTitulo:TITULO_ADVERTENCIA_STRING cuerpoDeMensaje: [NSString stringWithFormat:MSJ_,campo] conBoton:BOTON_OK_STRING conBotones:nil Delegado:delegado];
    
    return alert;
}
@end
