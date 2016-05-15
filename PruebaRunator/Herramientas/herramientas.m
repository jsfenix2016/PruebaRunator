//
//  herramientas.m
//  
//
//  Created by Javier Santana on 03/10/14.
//  

#import "herramientas.h"
#import "Alerts.h"
#import "Session.h"

float distMovimientoAnterior;
float distanciaMovimiento;
float distanciaMovida;
BOOL bajar;
static NSArray * Ir;

@implementation herramientas

+(void)setIr:(NSArray *)ir
{
    Ir = ir;
}

+(NSArray *)getIr
{
    return Ir;
}

+(UIAlertView *)mostrarMensajeConTitulo:(NSString *)titulo cuerpoDeMensaje:(NSString *)cuerpoDeMensaje conBoton:(NSString *)textoEnBoton conBotones:(NSArray *)botones Delegado:(id)delegado
{
    
    UIAlertView* mes=[[UIAlertView alloc]init];
    
    if (botones)
    {
        for (NSString * tb in botones)
        {
            [mes addButtonWithTitle:tb];
        }
    }
    else
    {
        [mes addButtonWithTitle:textoEnBoton];
    }
    
    if (cuerpoDeMensaje)
    {
        [mes setMessage:cuerpoDeMensaje];
    }
    
    if (titulo)
    {
        [mes setTitle:titulo];
    }
    
    if (delegado)
    {
        [mes setDelegate:delegado];
    }
    
    [mes show];
    
    NSMutableArray * listaDeAlertas = [Session getListaDeAlertas];
    
    if (!listaDeAlertas)
    {
        listaDeAlertas = [[NSMutableArray alloc]init];
    }
    
    [listaDeAlertas addObject:mes];
    
    [Session setListaDeAlertas:listaDeAlertas];
    
    return mes;
}



+(NSString*)eliminarEspaciosAString:(NSString*)string
{
    if ([string length]>0)
    {
        return [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    }
    return string;
    
}

+(NSString*)fechaYHoraActual
{
    NSDate *date = [[NSDate alloc]init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd-MM-yyyy hh:mm"];
    return [dateFormatter stringFromDate:date];
}

+(NSString*)fechaActual
{
    NSDate *date = [[NSDate alloc]init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    return [dateFormatter stringFromDate:date];
}


#define SEPARACION_DE_BORDE_DERECHO 50.0
#define APERTURA_DE_ANGULO 25
#define ALTO_ANGULO 10
#define GROSOR_LINEA 2.0
#define COLOR_LINEA [UIColor lightGrayColor]
#define APLHA_LINEA 0.3

+(NSArray *)validarArray:(id)array
{
    if (array != nil)
    {
        if(![array isKindOfClass:[NSArray class]])
        {
            array= [NSArray arrayWithObject:array];
        }
    }
    return  array;
}


+(NSString*)mesActual
{
    NSDateFormatter * df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"MMMM"];
    return [df stringFromDate:[[NSDate alloc] init]];
}

+(NSString*)anioActual
{
    NSDateFormatter * df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"yyyy"];
    return [df stringFromDate:[[NSDate alloc] init]];
}
@end
