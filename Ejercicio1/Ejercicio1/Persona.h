//
//  Persona.h
//  Ejercicio1
//
//  Created by alumno5 on 20/2/16.
//  Copyright © 2016 usal. All rights reserved.
//

/* Persona_h */

typedef enum : NSUInteger{
    Hombre = 0,
    Mujer
}Genero;

@interface Persona : NSObject

#pragma Mark - Declaración de Atributos

@property (nonatomic,strong) NSString *nombre;
@property (nonatomic,strong) NSString *apellidos;
@property (nonatomic,strong) NSDate *fechaNacimiento;
@property (nonatomic,assign) Genero genero;

#pragma Mark - Declaración de Inits

- (instancetype) initWithNombre : (NSString *) miNombre;
- (instancetype) initWithApellidos : (NSString *) miApellidos;

#pragma Mark - Métodos

/** 
 * Método por defecto que Saluda con Nombre y Apellidos
 *
 * @return NSString: Devuelve el NSString del saludo.
 */
- (NSString *) saludar;
- (void) decir: (NSString *) decirAlgo;

#pragma Mark - Clases
+ (instancetype) newFabricaConNombreApellidos: (NSString *) miPersona;

@end