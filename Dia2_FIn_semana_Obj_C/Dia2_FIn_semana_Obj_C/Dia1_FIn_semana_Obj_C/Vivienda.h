//
//  Vivienda.h
//  Dia1_FIn_semana_Obj_C
//
//  Created by rodrigo on 26/2/16.
//  Copyright © 2016 USAL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Persona2.h"
@interface Vivienda : NSObject
//Tipo de objeto, retenido de forma débil.
//Esta propiedad será nil si:
//1) No inicializada
//2) Está liberada (no tenía referencias strong)
//@property (nonatomic, weak) PersonaEjemplo *inquilino;



//Corrección Ej. 1:
@property (nonatomic, strong) Persona2 *inquilino;

@end
