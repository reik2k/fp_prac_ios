//
//  main.m
//  Dia1_FIn_semana_Obj_C
//
//  Created by rodrigo on 19/2/16.
//  Copyright © 2016 USAL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Persona.h"
#import "Persona2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSInteger valor = 1;
        id cualquierValor = @(1);
        NSLog(@"El valor de cualquierValor es %@", cualquierValor);
        cualquierValor = @"Hola mundo";
        NSLog(@"El valor de cualquierValor es %@", cualquierValor);
        BOOL esVerdadero = YES;
        CGRect miFrame = CGRectMake(0, 0, 100, 50);
        NSLog(@"El valor de miFrame es %1.0f %1.0f %1.0f %1.0f", miFrame.origin.x, miFrame.origin.y, miFrame.size.width, miFrame.size.height);
        NSLog(@"Valor del punto medio %f, %f", CGRectGetMidX(miFrame), CGRectGetMidY(miFrame));
        miFrame.size.height = 30;
        NSString *cadena = @"Saludos";
        
        //
        
        /*
         
         persona.calcularEdadConNumeroYModificadores(4, [4,3,24])
         nombre del método¿?
         calcularEdadConNumeroYModificadores
         persona calcularEdad:(NSInteger)edad conModificadores:(NSArray*)modificadores
         nombre del método¿?
         calcularEdad:conModificadores:
         
         */
    cadena = [NSString alloc];
    cadena = [cadena initWithFormat:@"Valor del punto medio %f, %f", CGRectGetMidX(miFrame), CGRectGetMidY(miFrame)];
        //Es lo mismo
        cadena = [[NSString alloc] initWithFormat:@"Valor del punto medio %f, %f", CGRectGetMidX(miFrame), CGRectGetMidY(miFrame)];
        
        cadena = [NSString new];
        cadena = [[NSString alloc] init];
        
        
        
        NSMutableString *cadenaMutable = [cadena mutableCopy];
        NSNumber *uno = [[NSNumber alloc] initWithInt:1];
        uno = [NSNumber numberWithInt:1];
        [uno floatValue];
        [uno boolValue];
        
        
        ///////////////////////////////////
        //  *Sábado *
        //////////////////////////////
        
        Persona *persona1 = [[Persona alloc] init];
        //%f float, CGFloat....
        //%lf double
        //%d int
        //%ld NSinteger, long
        //%s char
        // %@ objeto
        NSLog(@"Nombre de la persona %@", persona1.nombre);
        BOOL resultado = [persona1.nombre hasPrefix:@"hola"];
        NSLog(@"Resultado");
        persona1 = nil;
        persona1 = [[Persona alloc] initWithNombre:@"Juan"];
        [persona1 decirNombre];
        
        Persona2 *personaSaludadora = [Persona2 new];
        personaSaludadora.nombre = @"Juan";
        personaSaludadora.apellidos = @"Nadie";
        [personaSaludadora saludar];
        [personaSaludadora saludarA:@"Rodrigo" conApellidos:@"Extremo"];
        NSLog(@"%@",[Persona2 saludar]);
        [personaSaludadora decir:@"\"Hola mundo, estoy al 100%\""];
        
        NSDate *fechaNac = [NSDate date];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyy/MM/dd"];
        NSDate *fecha = [formatter dateFromString:@"20/02/2016"];
        NSString *fechaFormateada = [formatter stringFromDate:fecha];
        NSDate *fecha2 = [formatter dateFromString:@"2016/02/20"];
        Persona2 *personaConConstructor = [Persona2 newPersonaWithNombre:@"Rodrigo" apellidos:@"Extremo" fechaNacimiento:fechaNac yGenero:Hombre];
    }
    return 0;
}

