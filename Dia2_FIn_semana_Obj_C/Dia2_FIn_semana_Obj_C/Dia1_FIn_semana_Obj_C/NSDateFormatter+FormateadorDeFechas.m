//
//  NSDateFormatter+FormateadorDeFechas.m
//  Dia1_FIn_semana_Obj_C
//
//  Created by rodrigo on 26/2/16.
//  Copyright © 2016 USAL. All rights reserved.
//

#import "NSDateFormatter+FormateadorDeFechas.h"

@implementation NSDateFormatter (FormateadorDeFechas)

-(NSString *)cadenaFormatoGuionDeFecha:(NSDate *)fecha{
    [self setDateFormat:@"dd/MM/yyyy"];
        [self setLocale:[NSLocale localeWithLocaleIdentifier:@"es_ES"]];
    return [self stringFromDate:fecha];
}

-(NSDate*) fechaAPartirDeCadenaEnFormatoGuion:(NSString*)cadena{
    [self setDateFormat:@"dd/MM/yyyy"];
    [self setLocale:[NSLocale localeWithLocaleIdentifier:@"es_ES"]];
    return [self dateFromString:cadena];
}

-(NSString *)cadenaFormatoInversoDeFecha:(NSDate *)fecha{
    [self setDateFormat:@"yyyyMMdd"];
    [self setLocale:[NSLocale localeWithLocaleIdentifier:@"es_ES"]];
    return [self stringFromDate:fecha];
}

-(NSString *)horaAPartirDeFecha:(NSDate *)date{
    //[self setDateFormat:@"HH:mm:ss"];
    [self setTimeStyle:NSDateFormatterMediumStyle];
        [self setLocale:[NSLocale localeWithLocaleIdentifier:@"es_ES"]];
    return [self stringFromDate:date];
}
@end
