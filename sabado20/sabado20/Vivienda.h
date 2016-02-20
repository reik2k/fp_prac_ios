//
//  Vivienda.h
//  sabado20
//
//  Created by alumno5 on 20/2/16.
//  Copyright © 2016 usal. All rights reserved.
//

#ifndef Vivienda_h
#define Vivienda_h


#endif /* Vivienda_h */

#import "Persona.h"

@interface Vivienda : NSObject

/*
 Tipo de objeto, retención "débil"

 Estapropiedad será nil:
    1- No está inicializada
    2- Etá liberada (no posee referencias strong)
 */
@property (nonatomic,weak) Persona *inquilino;


@end