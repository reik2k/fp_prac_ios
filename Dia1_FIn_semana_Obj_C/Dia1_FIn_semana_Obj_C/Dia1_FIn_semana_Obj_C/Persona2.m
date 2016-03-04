//
//  Persona2.m
//  Dia1_FIn_semana_Obj_C
//
//  Created by rodrigo on 20/2/16.
//  Copyright © 2016 USAL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Persona2.h"

@implementation Persona2

-(instancetype) initWithNombre:(NSString*)nombre{
    if (self = [super init]){
        self.nombre = nombre;
        self.apellidos = @"";
        self.genero = Hombre;
        self.fechaNacimiento = [NSDate date];
    }
    return self;
}

+(instancetype)newPersonaWithNombre:(NSString *)nombre apellidos:(NSString *)apellidos fechaNacimiento:(NSDate *)fechaNac yGenero:(Genero)genero{
    Persona2 *persona = [Persona2 new];
    
    //Inicializar los valores de las propiedades
    persona.nombre = nombre;
    persona.apellidos = apellidos;
    persona.fechaNacimiento = fechaNac;
    persona.genero = genero;
    
    return persona;
}




-(void)saludar{
    NSLog(@"Hola, soy %@ %@", self.nombre, self.apellidos);
}

-(void) saludarA:(NSString *)nombre conApellidos:(NSString *)apellidos{
    NSLog(@"¡Hola %@ %@!", nombre, apellidos);
}

+(NSString *)saludar{
    NSString *valorDeSaludo = [NSString stringWithFormat:@"Hola, soy una Persona%%"]; //%% escapa el símbolo de %
    return valorDeSaludo;
    //Igual a :
    //return @"Hola, soy una Persona";
    //Igual a :
    //return [NSString stringWithFormat:@"Hola, soy una Persona"];
}

-(void)decir:(NSString *)algo{
    NSLog(@"Te quiero decir algo:\n \t %@", algo);
}

@end