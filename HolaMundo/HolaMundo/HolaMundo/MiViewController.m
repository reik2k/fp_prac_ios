//
//  MiViewController.m
//  HolaMundo
//
//  Created by rodrigo on 27/2/16.
//  Copyright © 2016 USAL. All rights reserved.
//

#import "MiViewController.h"

@interface MiViewController ()

@end

@implementation MiViewController

#pragma mark - Ciclo de vida
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	NSLog(@"Estoy entrando en viewDidLoad");
}

-(void)viewWillAppear:(BOOL)animated{
	[super viewWillAppear:animated]; //Importante, siempre llamar a super!
									 //Acciones a realizar por nosotros
	NSLog(@"He entrado en viewWillAppear");
}


-(void)viewDidAppear:(BOOL)animated{
	[super viewDidAppear:animated];
	
	NSString *cadena;
	if (animated){ //sería igual a animated == YES
		cadena = @"animándome";
	} else{
		cadena = @"sin animarme";
	}
	
	NSLog(@"He entrado en viewDidAppear %@", cadena);
}

-(void)viewWillDisappear:(BOOL)animated{
	[super viewWillDisappear:animated]; //Importante, siempre llamar a super!
									 //Acciones a realizar por nosotros
	NSLog(@"He entrado en viewWillDisappear");
}

-(void)viewDidDisappear:(BOOL)animated{
	[super viewDidDisappear:animated]; //Importante, siempre llamar a super!
									 //Acciones a realizar por nosotros
	NSLog(@"He entrado en viewDidDisappear");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
	NSLog(@"He recibido un memory warning");
}

	//*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
	if ([segue.identifier isEqualToString:@"cambiarPantalla"]){
			//segue.destinationViewController
	}else{
			//otro segue distinto
	}
}
	 //*/

- (IBAction)pulsadoBoton:(id)sender {
	NSLog(@"Entro");
	[self performSegueWithIdentifier:@"cambiarPantalla" sender:nil];
}
@end
