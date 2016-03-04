//
//  main.m
//  Ejercicio2
//
//  Created by rodrigo on 26/2/16.
//  Copyright © 2016 USAL. All rights reserved.
//

#import <Foundation/Foundation.h>
	//Importante!!! Importa las clases para utilizarlas
#import "Libro.h"
#import "Estanteria.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {

		
			//Aquí irían datos "reales"
		Libro *libro1 = [[Libro alloc] initWithTitulo:@"El señor de los Anillos" isbn:@"153743067u06tw90t7" autores:@[@"J.R.R. Tolkien", @"Yo"] fechaPublicacion:[NSDate date] precio:10.0];
		
		Estanteria *estanteria = [[Estanteria alloc]init];
		[estanteria anadirLibro:libro1];
		[estanteria buscarLibroPorTitulo:@"El señor de los Anillos"];
		NSLog(@"%@", [estanteria description]);
		
		
		
	}
    return 0;
}
