//
//  LoginViewController.m
//  Login
//
//  Created by rodrigo on 4/3/16.
//  Copyright © 2016 USAL. All rights reserved.
//

#import "LoginViewController.h"
/*
@interface LoginViewController ()

@end
*/
@implementation LoginViewController
-(void)viewDidLoad{
	[super viewDidLoad];
	//Delegación por código
	/*
	self.tfUsuario.delegate = self;
	self.tfPassword.delegate = self;
	 */
	
	
	//Ir a background (segundo plano)
	NSNotificationCenter *notificaciones = [NSNotificationCenter defaultCenter];
	[notificaciones addObserver:self selector:@selector(vamosABackground:) name:UIApplicationDidEnterBackgroundNotification object:nil];
	//Volver a foreground (primer plano)
	[notificaciones addObserver:self selector:@selector(volvemosAPrimerPlano:) name:UIApplicationWillEnterForegroundNotification object:nil];
	//Notificaciones personalizadas
	//[notificaciones addObserver:self selector:@selector(vamosABackground:) name:@"fdfa" object:nil];
	//[notificaciones postNotificationName:@"fdfa" object:@"jlfajfla"];
}


-(void)dealloc{
	//Implementar "limpieza"
	NSNotificationCenter *notificaciones = [NSNotificationCenter defaultCenter];
	[notificaciones removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:nil];
	[notificaciones removeObserver:self name:UIApplicationWillEnterForegroundNotification object:nil];

}

//selector:
//vamosABackground:
-(void) vamosABackground:(NSNotification*)notificacion{
	self.tfPassword.text = @"";
	self.tfUsuario.text = nil;
	NSLog(@"Vamos a background");
}


-(void) volvemosAPrimerPlano:(NSNotification*)notification{
	NSLog(@"Vuelvo a primer plano");
}

//selector
//metodoConParam1:yParam2:
-(void) metodoConParam1:(NSNotification*)param1 yParam2:(id)param2{
	
}

-(void)dismissTeclado:(id)sender{
	if ([self.tfUsuario isFirstResponder]){
		[self.tfUsuario resignFirstResponder];
	}else{
		[self.tfPassword resignFirstResponder];
	}
}

-(IBAction)hacerLogin:(id)sender{
	if(self.tfUsuario.text.length > 0){
		//Hacemos login
	}else{
		//1. Creación
		UIAlertController *controller = [UIAlertController alertControllerWithTitle:@"Error" message:@"Debes rellenar el usuario" preferredStyle:UIAlertControllerStyleAlert];
		//2. Configuración
		UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
			NSString *usuario = controller.textFields[0].text;
			NSString *password = controller.textFields[1].text;
		}];
		UIAlertAction *cancelar = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDestructive handler:nil];
		
		[controller addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
			textField.placeholder = @"Introduce el usuario, por favor";
		}];
	
		
		[controller addAction:action];
		[controller addAction:cancelar];
		
		//3. Mostrar
		//[self presentViewController:controller animated:YES completion:nil];
		[self presentViewController:controller animated:YES completion:^{
			
		}];
	}
}

#pragma mark - Textfield Delegate
-(void)textFieldDidBeginEditing:(UITextField *)textField{
	NSLog(@"He comenzado a escribir");
	if ([textField isEqual:self.tfUsuario]){
		NSLog(@"y estoy escribiendo sobre el textfield de usuario");
	}else{
		NSLog(@"y estoy escribiendo sobre el textfield de password");
	}
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
	if ([textField isEqual:self.tfUsuario]){
			//[self.tfUsuario resignFirstResponder]; //para quitar foco
		[self.tfPassword becomeFirstResponder];
		return NO;
	}
	[textField resignFirstResponder];
	return YES;
}

@end