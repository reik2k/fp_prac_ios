//
//  Vivienda.h
//  Dia1_FIn_semana_Obj_C
//
//  Created by rodrigo on 20/2/16.
//  Copyright © 2016 USAL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Persona.h"
@interface Vivienda : NSObject

//Tipo de objeto, retenido de forma débil.
//Esta propiedad será nil si:
//1) No inicializada
//2) Está liberada (no tenía referencias strong)
@property (nonatomic, weak) Persona *inquilino;
@end
