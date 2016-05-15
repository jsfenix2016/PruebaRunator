//
//  Alerts.h
//  -911Chic
//
//  Created by Gabriel on 8/28/15.
//  Copyright (c) 2015 Orusnet. All rights reserved.
//
/*****************************************/
#define BOTON_OK_STRING @"Aceptar"
#define BOTON_LLAMAR_STRING @"Llamar"
#define BOTON_ACTUALIZAR_STRING @"Actualizar"
#define BOTON_CAMBIAR_STRING @"Cambiar"
#define BOTON_CONTINUAR_STRING @"Continuar"
#define BOTON_CANCELAR_STRING @"Cancelar"
#define TITULO_AVISO_STRING @"Aviso"
#define TITULO_INFORMACION_STRING @"Información"
#define TITULO_ADVERTENCIA_STRING @"Advertencia"
#define TITULO_ATENCION_STRING @"Atención"
#define TITULO_ERROR_STRING @"Advertencia"
#define MSJ_ERROR_COMUNIC_SERVIDOR @"Advertencia"
#define BOTON_SI_STRING @"Si"
#define BOTON_NO_STRING @"No"
#define BOTON_SALIR @"Salir"

#define MSJ_CAMPO_VACIO @"Debe ingresar %@."
#define MSJ_ @" %@."
#import <UIKit/UIKit.h>

@interface Alerts : UIAlertView

+(UIAlertView *)alertaCampoVacio:(id)delegado :(NSString *) campo;

+(UIAlertView *)alertaMensaje:(id)delegado :(NSString *) campo;
@end
