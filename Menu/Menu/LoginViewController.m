//
//  LoginViewController.m
//  Menu
//
//  Created by alumno5 on 4/3/16.
//  Copyright © 2016 usal. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
        UIAlertAction *action=[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDestructive handler:nil];

        //Unirlo al dialog
        [controller addAction:action];
        
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


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
