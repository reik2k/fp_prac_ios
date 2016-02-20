//
//  main.m
//  Ejercicio1
//
//  Created by alumno5 on 20/2/16.
//  Copyright © 2016 usal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Persona.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Persona *personaCreada = [Persona new];
        
        personaCreada.nombre = @"Pepe";
        personaCreada.apellidos = @"Gómez García";
        
        [personaCreada saludar];
        [personaCreada decir:@"ey que pasa!"];
        //NSLog(@"%@", [personaCreada saludar]);
    }
    return 0;
}
