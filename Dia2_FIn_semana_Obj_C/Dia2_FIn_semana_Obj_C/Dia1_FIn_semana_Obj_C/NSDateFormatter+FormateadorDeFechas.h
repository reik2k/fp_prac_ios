//
//  NSDateFormatter+FormateadorDeFechas.h
//  Dia1_FIn_semana_Obj_C
//
//  Created by rodrigo on 26/2/16.
//  Copyright © 2016 USAL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDateFormatter (FormateadorDeFechas)

//Esta función va a devolver una cadena en formato dd/MM/yyyy
-(NSString*) cadenaFormatoGuionDeFecha:(NSDate*)fecha;

//Esta función va a devolver una fecha a partir de cadena en formato dd/MM/yyyy
-(NSDate*) fechaAPartirDeCadenaEnFormatoGuion:(NSString*)cadena;
//Esta función va a devolver una cadena en formato yyyyMMdd
-(NSString*) cadenaFormatoInversoDeFecha:(NSDate*)fecha;
//Esta función va a devolver una cadena en formato HH:mm:ss
-(NSString*) horaAPartirDeFecha:(NSDate*)date;

@end
