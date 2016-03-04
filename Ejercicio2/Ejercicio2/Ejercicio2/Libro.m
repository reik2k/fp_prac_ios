//
//  Libro.m
//  Ejercicio2
//
//  Created by rodrigo on 26/2/16.
//  Copyright © 2016 USAL. All rights reserved.
//

#import "Libro.h"

@implementation Libro
-(instancetype)initWithTitulo:(NSString *)titulo isbn:(NSString *)isbn autores:(NSArray<NSString *> *)autores fechaPublicacion:(NSDate *)fecha precio:(double)precio{
	self = [super init];
	
		//Inicializamos
	
	self.titulo = titulo;
	self.ISBN = isbn;
	self.precio = precio;
	self.fechaPublicacion = fecha;
	self.autores = autores;
		//...
	
	return self;
}

-(BOOL)isEqual:(id)object{
	if (object == nil) { //es lo mismo que if (!object)
		return NO;
	}
	Libro *libroAComparar = (Libro*) object;
	return [self.ISBN isEqualToString:libroAComparar.ISBN];
}

	//Estamos sobrescribiendo, NO ES NECESARIO DEFINIRLO EN EL .h
-(NSString *)description{
	return [NSString stringWithFormat:@"El libro es: %@ escrito por %@", self.titulo, [self.autores description]];
}




@end
