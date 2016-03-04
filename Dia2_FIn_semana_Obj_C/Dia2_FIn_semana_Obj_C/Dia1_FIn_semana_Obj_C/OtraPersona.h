//
//  Persona.h
//  Dia1_FIn_semana_Obj_C
//
//  Created by rodrigo on 19/2/16.
//  Copyright © 2016 USAL. All rights reserved.
//

#import <Foundation/Foundation.h>
@class OtraVivienda;



@interface OtraPersona : NSObject
/***************************
 ** PROPIEDADES
 ***************************/


//Tipo de objeto, retenido de forma "fuerte", necesito su valor
@property (nonatomic, strong) NSString *nombre;
@property (nonatomic, strong) NSString *apellidos;

@property (nonatomic, strong) OtraVivienda *casa;


//@property (nonatomic, strong) IBOutlet NSString *miView; //con modificador de Interface Builder

//Es copy, copia el objeto, no apunta a la misma referencia
@property (nonatomic, copy) NSString *nick;

//Propiedad de tipo NSInteger (NO OBJETO!!!!)
@property (nonatomic, assign) NSInteger edad;



/***************************
 ** MÉTODOS
 ***************************/
//Inicializadores
//Inicializador con un parámetro
-(instancetype)initWithNombre:(NSString*)nombre;
//Inicializador de clase
//Nombre del método es newPersonaConNombreyApellidos
+(instancetype) newPersonaConNombre:(NSString*)personaNombre yApellidos:(NSString*)personaApellidos viviendoEn:(OtraVivienda*)casa;
- (void) decirNombre;
//Ejemplo de IBAction (no tiene sentido porque es aplicación de consola de comandos)
//- (IBAction)botonPulsado:(id)sender;

@end


//OJO! clase distinta!
@interface Alumno : OtraPersona

@end