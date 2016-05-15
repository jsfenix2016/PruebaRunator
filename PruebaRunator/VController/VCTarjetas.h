//
//  VCTarjetas.h
//  Prueba
//
//  Created by javier on 5/14/16.
//  Copyright (c) 2016 javier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCTarjetas : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tablaTarjetas;

@end
