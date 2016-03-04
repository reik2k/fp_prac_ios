//
//  Estanteria.h
//  Ejercicio2
//
//  Created by rodrigo on 26/2/16.
//  Copyright © 2016 USAL. All rights reserved.
//

#import <Foundation/Foundation.h>

	//Para utilizar el Libro debemos importarlo
#import "Libro.h"

	//Creamos clase Estanteria para almacenar libros
@interface Estanteria : NSObject

	//Declaramos un array de libros. Ha de ser mutable para trabajar con el (añadir, eliminar) y especificamos que sea de tipo libro para no insertar por ejemplo Revistas en nuestra estantería.
@property (nonatomic, strong) NSMutableArray<Libro*>* libros;


-(void) anadirLibro:(Libro*) libroAAnadir;
-(Libro*) buscarLibroPorTitulo:(NSString*)titulo;
-(Libro*) buscarLibro:(Libro*)libroABuscar;
-(void) eliminarLibroPorTitulo:(NSString*)titulo;
-(void) eliminarLibro:(Libro*)libroABorrar;
-(void) incrementarPrecio:(double) nuevoPrecio;
@end
