//
//  Persona2+Mayusculas.m
//  Dia1_FIn_semana_Obj_C
//
//  Created by rodrigo on 26/2/16.
//  Copyright © 2016 USAL. All rights reserved.
//

#import "Persona2+Mayusculas.h"

@implementation Persona2 (Mayusculas)
-(NSString *)nombreEnMayusculas{
	return [self.nombre uppercaseString];
}
@end
