//
//  Runner.h
//  Prueba
//
//  Created by javier on 5/14/16.
//  Copyright (c) 2016 javier. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Imagenes.h"

@interface Runner : NSObject

@property (nonatomic, strong) NSString *usr_id;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *nameComentarista;

//@property (nonatomic, strong) NSArray *urlImagen;


@property (nonatomic, strong) NSString *lugar;
@property (nonatomic, strong) NSString *fecha;
@property (nonatomic, strong) NSString *hora;
@property (nonatomic, strong) NSString *distancia;
@property (nonatomic, strong) NSString *ritmo;
@property (nonatomic, strong) NSString *duracion;
@property (nonatomic, strong) NSArray *mapa;
@property (nonatomic, strong) NSArray *fotoCarrera;
@property (nonatomic, strong) NSString *likes;
@property (nonatomic, strong) NSString *ultimoComentario;
@property (nonatomic, strong) NSString *totalComentarios;
@property (nonatomic, strong) NSArray *urlImage;
@end
