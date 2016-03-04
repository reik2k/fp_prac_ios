//
//  Estanteria.m
//  Ejercicio2
//
//  Created by rodrigo on 26/2/16.
//  Copyright © 2016 USAL. All rights reserved.
//

#import "Estanteria.h"

@implementation Estanteria

-(instancetype) init{
	self = [super init];
	self.libros = [NSMutableArray new]; //new es igual a alloc] init]
	return self;
}

-(void)anadirLibro:(Libro *)libroAAnadir{
	[self.libros addObject:libroAAnadir];
}

-(void)eliminarLibro:(Libro *)libroABorrar{
	[self.libros removeObject:libroABorrar];
}

-(Libro*) buscarLibro:(Libro*) libroABuscar{
		//return [self.libros objectAtIndex:[self.libros indexOfObject:libroABuscar]];
	for (int i = 0; i < self.libros.count ; i++) {
		Libro *iterador = self.libros[i]; //[self.libros objectAtIndex:i];
		if ([iterador isEqual:libroABuscar]){
			return iterador;
		}
	}
	
		//Otra forma
		//For Each:
	for (Libro *iterador in self.libros){
		if ([iterador isEqual:libroABuscar]){
			return iterador;
		}
	}
	return nil;
}

-(Libro*)buscarLibroPorTitulo:(NSString *)titulo{
	Libro *libroARetornar;
	for (Libro *iterador in self.libros){
		if ([iterador.titulo isEqualToString:titulo]){
			libroARetornar =  iterador;
			break;
		}
	}
	return libroARetornar;
	
		//sería lo mismo que
	/*for (Libro *iterador in self.libros){
		if ([iterador.titulo isEqualToString:titulo]){
			return  iterador;
		}
	}
	return nil;
	 */
}

-(void)eliminarLibroPorTitulo:(NSString *)titulo{
	
}
	 


-(NSString *)description{
	return [NSString stringWithFormat:@"Total de la estantería: %lu y el contenido es %@", (unsigned long)self.libros.count, [self.libros description]];
}



-(void)incrementarPrecio:(double)nuevoPrecio{
	for (Libro* libro in self.libros) {
		libro.precio = nuevoPrecio;
	}
}


@end
