//
//  Session.m
//  -911Chic
//
//  Created by Gabriel on 8/28/15.
//  Copyright (c) 2015 Orusnet. All rights reserved.
//

#import "Session.h"
#import "Runner.h"
#import "Runner.h"

@implementation Session
NSMutableArray *listaDeUiAlertViews;
static Runner *_user;
static Imagenes *_img;

+ (Runner *) getRunner
{
    if (!_user)
    {
        _user = [[Runner alloc] init];
    }
    return _user;
}
+ (void) setRunner : (Runner*) user
{
    if(user.name)
        _user.name = user.name;
    if(user.lugar)
        _user.lugar = user.lugar;
    if(user.fecha)
        _user.fecha = user.fecha;
    if(user.hora)
        _user.hora = user.hora;

    if(user.distancia)
        _user.distancia = user.distancia;
    if(user.ritmo)
        _user.ritmo = user.ritmo;

    if(user.duracion)
        _user.duracion = user.duracion;
    if(user.mapa)
        _user.mapa = user.mapa;

    if(user.fotoCarrera)
        _user.fotoCarrera = user.fotoCarrera;
    if(user.likes)
        _user.likes = user.likes;

    if(user.ultimoComentario)
        _user.ultimoComentario = user.ultimoComentario;
    if(user.fotoCarrera)
        _user.fotoCarrera = user.fotoCarrera;
    if(user.urlImage)
        _user.urlImage = user.urlImage;
    
}

+ (void) setImagen : (Imagenes*) img
{
    if (img.urlImage) {
        _img.urlImage = img.urlImage;
    }
}

+ (Imagenes *) getImagen
{
    if (!_img) {
        _img = [[Imagenes alloc] init];
    }
    
    return _img;
}

+(NSMutableArray *)getListaDeAlertas
{
    return listaDeUiAlertViews;
}

+(void)setListaDeAlertas:(NSMutableArray *)lista
{
    listaDeUiAlertViews = lista;
}
@end
