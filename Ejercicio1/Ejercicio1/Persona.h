//
//  Persona.h
//  Ejercicio1
//
//  Created by alumno5 on 20/2/16.
//  Copyright © 2016 usal. All rights reserved.
//

#ifndef Persona_h
#define Persona_h


#endif

/* Persona_h */

typedef enum : NSUInteger{
    Hombre = 0,
    Mujer
}Genero;

@interface Persona : NSObject

@property (nonatomic,strong) NSString *nombre;
@property (nonatomic,strong) NSString *apellidos;
@property (nonatomic,strong) NSDate *fechaNacimiento;
@property (nonatomic,assign) Genero genero;

- (void) saludar;

- (void) decir: NSString;

@end