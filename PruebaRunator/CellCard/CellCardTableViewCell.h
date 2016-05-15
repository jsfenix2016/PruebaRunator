//
//  CellCardTableViewCell.h
//  Prueba
//
//  Created by javier on 5/13/16.
//  Copyright (c) 2016 javier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellCardTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imgPerfil;
@property (weak, nonatomic) IBOutlet UILabel *lblNombre;
@property (weak, nonatomic) IBOutlet UILabel *lblLugar;
@property (weak, nonatomic) IBOutlet UILabel *lblFecha;
@property (weak, nonatomic) IBOutlet UILabel *lblHora;
@property (weak, nonatomic) IBOutlet UILabel *lblDistancia;
@property (weak, nonatomic) IBOutlet UILabel *lblRitmo;
@property (weak, nonatomic) IBOutlet UILabel *lblDuracion;
@property (weak, nonatomic) IBOutlet UILabel *lblDistanciaNum;
@property (weak, nonatomic) IBOutlet UILabel *lblRitmoNum;
@property (weak, nonatomic) IBOutlet UILabel *lblDuracionNum;
@property (weak, nonatomic) IBOutlet UIImageView *imgMapa;
@property (weak, nonatomic) IBOutlet UILabel *lblCantidadSeguidores;
@property (weak, nonatomic) IBOutlet UILabel *lblNombreCometarista;
@property (weak, nonatomic) IBOutlet UILabel *lblComentario;
@property (weak, nonatomic) IBOutlet UILabel *lblCantidadComentarios;

@end
