//
//  Persona.m
//  Ejercicio1
//
//  Created by alumno5 on 20/2/16.
//  Copyright © 2016 usal. All rights reserved.
//

//#import <Foundation/Foundation.h> es igual a @import Foundation;
@import Foundation;
#import "Persona.h"

@implementation Persona

#pragma Mark - Impl. Init

- (instancetype) initWithNombre: (NSString *)miNombre {
    
    if (self = [super init]) {
        _nombre = miNombre;
    }
    return self;
}

- (instancetype) initWithApellidos: (NSString *)miApellidos {
    
    if (self = [super init]) {
        _apellidos = miApellidos;
    }
    return self;
}

#pragma Mark - Impl. Métodos

- (NSString *) saludar{
    
    NSString *saludo = [NSString stringWithFormat:@"Hola %@ %@"];
    
    return saludo;
}

- (void) decir : algo{
    NSLog(@"Hola Mundo %@", algo);
}

@end
