//
//  ViewController.m
//  Menu
//
//  Created by alumno5 on 4/3/16.
//  Copyright © 2016 usal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //Ir a background, "defultCenter" o Instancia Singleton
    NSNotificationCenter *notificaciones = [NSNotificationCenter defaultCenter];
    
    //Añadimos un "Observer" para subscribirnos al evento de ir a Segundo Plano
    [notificaciones addObserver:self selector:@selector(vamosABackground:) name:UIApplicationDidEnterBackgroundNotification object:nil];
    
    //Añadimos un "Observer" para subscribirnos al evento de ir a Primer Plano
    [notificaciones addObserver:self selector:@selector(vamosAForeGround:) name:UIApplicationDidEnterBackgroundNotification object:nil];
    
    //Crea envio de datos para eventos personalizados
    [notificaciones postNotificationName:@"lanzaMiMetodoPersonalizado"  object:@"Hola soy un objecto"];
    
    //Para subscribirme a mi propio lanzador de eventos sería:
    [notificaciones addObserver:self selector:@selector(metodoConparam1:yParam2::) name:@"lanzaMiMetodoPersonalizado" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Métodos invocados para BackForeGround
- (void) vamosABackground:(NSNotification*) notificaicon{
    
    self.btnPassword.text=@""; //Podríamos poner nill para vacíar el input
    self.btnName.text=nil;
}

- (void) vamosAForeGround:(NSNotification*) notificaicon{
    
    NSLog(@"Estamos en PrimerPlano");
}

#pragma mark - Eliminar instancias de memoria
-(void) dealloc{
    //Implementar Limpieza
    
    NSNotificationCenter *notificaciones = [NSNotificationCenter defaultCenter];
    
    [notificaciones removeObserver:self name: UIApplicationDidEnterBackgroundNotification object:nil];
    [notificaciones removeObserver:self name: UIApplicationWillEnterForegroundNotification object:nil];
    
}

-(void) metodoConparam1:(id) param1 yParam2:(id)param2{
    
}

#pragma mark - HacerLogin
-(void) hacerLogin:(id) sender{
    if(self.btnName.text >0){
        //hacemos login
    }else {
        
        //Dialog con un botón
        //Declaración del dialog con texto
        UIAlertController *controller = [UIAlertController
                                         alertControllerWithTitle:@"Aviso"
                                         message:@"Debe rellenar un nombre"
                                         preferredStyle:UIAlertControllerStyleAlert];
        //Añadir un botón
        UIAlertAction *action=[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action){
            NSString *usuario=controller.textFields[0].text;
        }];
        
        //Unirlo al dialog
        [controller addAction:action];
        
        //Añadir un TextField
        [controller  addTextFieldWithConfigurationHandler:^(UITextField *_Nonnull textField){
            textField.placeholder=@"Escribe un valor";
        }];
        
        [self presentViewController:controller animated: YES completion:^{
            //Introducir codigo para implementar el
        }];
        
    }
}

#pragma mark - Terxfield
-(void)textFildDidBeginEditing:(UITextField *) textDield{
    NSLog(@"He comenzado a escribir");
    
    /*if ([self.btnName.isFirstResponder]) {
     [self.btnName resignFirstResponder];
     } else {
     
     }*/
}
@end
