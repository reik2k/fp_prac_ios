//
//  Libro.h
//  Ejercicio2
//
//  Created by rodrigo on 26/2/16.
//  Copyright © 2016 USAL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Libro : NSObject
@property (nonatomic, strong) NSString *ISBN;
@property (nonatomic, strong) NSString *titulo;
@property (nonatomic, strong) NSArray<NSString*>* autores;
@property (nonatomic, strong) NSDate *fechaPublicacion;
@property (nonatomic, assign) double precio;


-(instancetype) initWithTitulo:(NSString*)titulo
						  isbn:(NSString*) isbn
					   autores:(NSArray<NSString*>*)autores
			  fechaPublicacion:(NSDate*)fecha
						precio:(double)precio;


@end
