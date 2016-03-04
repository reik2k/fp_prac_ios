//
//  Persona.m
//  Dia1_FIn_semana_Obj_C
//
//  Created by rodrigo on 19/2/16.
//  Copyright © 2016 USAL. All rights reserved.
//

#import "Persona.h"
#import "Vivienda.h"

@implementation Persona
//@synthesize nombre = _nombre;
#pragma mark - inicializadores
//Heredado: no es necesario declarar en .h
-(instancetype)init{
    if (self = [super init]){
        //Hacemos algo
    }
    return self;
}

-(instancetype)initWithNombre:(NSString*)nombre{
    if (self = [super init]){
        self.nombre = nombre;
    }
    return self;
}

+(instancetype)newPersonaConNombre:(NSString *)personaNombre yApellidos:(NSString *)personaApellidos viviendoEn:(Vivienda *)casa{
    Persona *persona = [Persona new]; //igual que [[Persona alloc] init];
    persona.nombre = personaNombre;
    persona.apellidos = personaApellidos;
    persona.nick = persona.nombre;
    persona.edad = 25;
    Vivienda *vivienda = [Vivienda new];
    //persona retendrá a vivienda de tipo strong
    vivienda.inquilino = persona;
    
    //Variable de tipo WEAK
    //OJO! DOS barras _
    Vivienda __weak *weakVivienda = [Vivienda new];
    return persona;
}


#pragma mark - Otros

- (void) decirNombre{
    NSLog(@"%@", _nombre);
    NSLog(@"%@", self.nombre);
    self.nombre = @"Hola"; //setter de Hola
    _nombre = @"Adiós"; //cambio de punteros
}

#pragma mark - Métodos heredados

-(NSString *)description{
    return self.nombre; 
}

//Getter y setter
/*-(NSString *)nombre{
    //return self.nombre; Mucho cuidado
    return _nombre;
}
 */

/*
-(void)setNombre:(NSString *)nombre{
    //_nombre = nombre;
    _nombre = nombre;
}
//*/


#warning Esto puede ser un warning

#pragma mark - Tratamiento en BBDD
//...
#pragma mark - Invocaciones al API
//...

@end

//OJO! Clase distinta
@implementation Alumno

//...

@end
