//
//  VCTarjetas.m
//  Prueba
//
//  Created by javier on 5/14/16.
//  Copyright (c) 2016 javier. All rights reserved.
//

#import "VCTarjetas.h"
#import "CellCardTableViewCell.h"
#import "ToolsImage.h"
#import "activity.h"
#import "herramientas.h"
#import "Service.h"
#import "Runner.h"
@interface VCTarjetas ()
{
    dispatch_function_t *dispatch;
}
@end

@implementation VCTarjetas
NSArray *ConsultaCarrera;
NSArray *catalog;
NSDictionary * consulta;
NSString * imagePerfil_;
NSString * imagerouge_;
int min=1;
int max=700;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [_tablaTarjetas setDataSource:self];
    [_tablaTarjetas setDelegate:self];
    
    [activity iniciarAnimacionEnVista2:self];
    
   ConsultaCarrera = [Service crearTarjeta:^(id result)
     {
        NSLog(@"resultado %@", [result description]);
         
     } failureBlock:^(NSError * error)
     {
         NSLog(@"%@",error);
     }];
 [activity detenerAnimacionEnVista:self];
    [herramientas setIr:ConsultaCarrera];
    [self.tablaTarjetas reloadData];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableView
//Metodo que define el numero de columnas del tableview
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

//Metodo que define el numero de filas del tableview
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // NSUInteger c = [ConsultaProducto count];
    return 5;//[listaCuentasArray count];
}


-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //creamos un objeto de tipo UITableViewCell que apunte a la celda con identificador "celda"
    CellCardTableViewCell *cell = (CellCardTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"celda" forIndexPath:indexPath];
    
    //si la celda no existe, la creamos con su respectivo identificador
    if (!cell)
    {
        cell = [[CellCardTableViewCell alloc]initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"celda"];
    }
    
    consulta = [ConsultaCarrera objectAtIndex:indexPath.row];
    
    
    Runner * runner = [[Runner alloc]init];
    
    runner.nameComentarista= [consulta objectForKey:@"nameComentarista"];
    runner.name = [consulta objectForKey:@"name"];
    runner.lugar = [consulta objectForKey:@"lugar"];
    
    runner.hora =[consulta objectForKey:@"hora"];
    runner.fecha =[consulta objectForKey:@"fecha"];
    runner.ritmo =[consulta objectForKey:@"ritmo"];
    runner.duracion =[consulta objectForKey:@"duracion"];
    runner.likes =[consulta objectForKey:@"likes"];
    runner.ultimoComentario =[consulta objectForKey:@"ultimoComentario"];
    
    runner.distancia =[consulta objectForKey:@"distancia"];
    runner.mapa =[consulta objectForKey:@"mapa"];
    runner.fotoCarrera =[consulta objectForKey:@"fotoCarrera"];
    runner.totalComentarios =[consulta objectForKey:@"totalComentarios"];
    
    
    runner.urlImage = [consulta objectForKey:@"urlImage"];
    
    dispatch_queue_t backgroundQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0);
    dispatch_async(backgroundQueue, ^{
        if (runner.urlImage != 0)
        {
            imagePerfil_=[[runner.urlImage objectAtIndex:0]objectForKey:@"urlImage"];
            
            if (![imagePerfil_ isKindOfClass:[NSNull class]])
            {
                cell.imgPerfil.image =[ToolsImage convertStringImage:imagePerfil_];
            }
        }else
        {
            cell.imgPerfil.image =[UIImage imageNamed:@"personal-1.png"];
        }
        
        if (runner.mapa!= 0)
        {
            imagerouge_=[[runner.mapa objectAtIndex:0]objectForKey:@"mapa"];
            
            if (![imagerouge_ isKindOfClass:[NSNull class]])
            {
                cell.imgMapa.image =[ToolsImage convertStringImage:imagerouge_];
            }
        }else
        {
            cell.imgMapa.image =[UIImage imageNamed:@"ruta.PNG"];
        }
    });

    
    cell.lblNombre.text = [consulta objectForKey:@"name"];
    cell.lblLugar.text = [consulta objectForKey:@"lugar"];
    cell.lblFecha.text=[consulta objectForKey:@"fecha"];
    cell.lblHora.text =[consulta objectForKey:@"hora"];
    cell.lblDistanciaNum.text=[consulta objectForKey:@"distancia"];
    cell.lblRitmoNum.text=[consulta objectForKey:@"ritmo"];
    cell.lblDuracionNum.text =[consulta objectForKey:@"duracion"];
    cell.lblNombreCometarista.text=[consulta objectForKey:@"lblNombreCometarista"];
    cell.lblComentario.text=[consulta objectForKey:@"lblCometarista"];
    cell.lblCantidadComentarios.text=[consulta objectForKey:@"totalComentarios"];
;
    cell.lblCantidadSeguidores.text=[consulta objectForKey:@"lblCantidadSeguidores"];
        
   
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
