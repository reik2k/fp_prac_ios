//
//  Persona.h
//  sabado20
//
//  Created by alumno5 on 20/2/16.
//  Copyright © 2016 usal. All rights reserved.
//

/* Persona_h */
@class Vivienda;

@interface Persona_h : NSObject

#pragma mark - ATRIBUTOS

// Atributos; Tipo de objeto retenido como "fuerte", necesito su valor
@property (nonatomic, strong) NSString *nombre;
@property (nonatomic, strong) NSString *apellido;

//copy - realiza un clon indpendiente del objecto copiado, es decir, tendríamos 2 obj
@property (nonatomic, copy) NSString *nik;

//No es un objeto sino un entero númerico
@property (nonatomic, assign) NSInteger *age;

//método
- (void) tellMeName;

#pragma mark - INICIALIZADORES

//metodo que devulve un valor, cuando no se utiliza el inicializador
// las variables se inicializa Integer como 0 Bool como NO y String como vacío
-(instancetype) initWithNombre:(NSString *) nombre;


//instanciar un objecto class
+(instancetype) newPersonaConNombre:(NSString *) peronaNombre;


@end

/*
 strong - para objectos
 weak   - para referencias, no como tales sino como relaciones entre obj.
            nil está liberado por lo que podría tomar ese valor esa variable.
 assing - 
 
 */



