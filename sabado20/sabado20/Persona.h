//
//  Persona.h
//  sabado20
//
//  Created by alumno5 on 20/2/16.
//  Copyright © 2016 usal. All rights reserved.
//


/* Persona_h */
@interface Persona_h : NSObject

@property (nonatomic, strong) NSString *nombre;
@property (nonatomic, weak) NSString *apellido;


- (void) tellMeName;

-(instancetype) initWithNombre:(NSString *) nombre;

+(instancetype) newPersonaConNombre:(NSString *) peronaNombre;

@end



