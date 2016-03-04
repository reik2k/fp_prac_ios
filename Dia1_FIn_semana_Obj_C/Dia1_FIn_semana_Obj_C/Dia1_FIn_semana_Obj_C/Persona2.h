//
//  Persona2.h
//  Dia1_FIn_semana_Obj_C
//
//  Created by rodrigo on 20/2/16.
//  Copyright © 2016 USAL. All rights reserved.
//

//Cualquiera de las dos es válida
//#import <Foundation/Foundation.h>
@import Foundation;

//RESOLUCIÓN DE EJERCICIO 1:

//Utilizamos una enumeración como definición de tipo Género
typedef enum : NSUInteger {
    Hombre,
    Mujer,
} Genero;

@interface Persona2 : NSObject
@property (nonatomic, strong) NSString *nombre;
@property (nonatomic, strong) NSString *apellidos;
@property (nonatomic, strong) NSDate *fechaNacimiento;
@property (nonatomic, assign) Genero genero;

+(instancetype) newPersonaWithNombre:(NSString*)nombre apellidos:(NSString*)apellidos fechaNacimiento:(NSDate*)fechaNac yGenero:(Genero)genero;

-(instancetype) initWithNombre:(NSString*)nombre;

//indica que va a invocarse desde una persona (p. ej. Juan)
-(void) saludar;

/**
 *  La Persona, como clase saludará
 *
 *  @return NSString: el valor del saludo
 */
+(NSString*) saludar;
-(void) saludarA:(NSString*) nombre conApellidos:(NSString*)apellidos;

-(void) decir:(NSString*)algo;
//o bien
//-(NSString*) decir:(NSString*)algo;

@end