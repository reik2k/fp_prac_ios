//
//  Persona.m
//  Ejercicio1
//
//  Created by alumno5 on 20/2/16.
//  Copyright © 2016 usal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Persona.h"

@implementation Persona

- (void) saludar{
    NSLog(@"Hola, %@ %@", self.nombre, self.apellidos);
}

- (void) decir : nombre{
    NSLog(@"Hola Mundo %@", nombre);
}

@end
