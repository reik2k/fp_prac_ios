//
//  InformacionVivienda.h
//  Dia1_FIn_semana_Obj_C
//
//  Created by rodrigo on 26/2/16.
//  Copyright © 2016 USAL. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Vivienda;

@protocol InformacionVivienda <NSObject>

//@required //Esto es lo mismo que no poner nada!!!!!!
-(NSInteger) numeroDeViviendas;
-(BOOL) comprarVivienda:(Vivienda*)vivienda;
-(NSArray<Vivienda*>*) obtenerViviendas;
@end
