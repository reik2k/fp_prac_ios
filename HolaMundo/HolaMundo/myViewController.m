//
//  myViewController.m
//  HolaMundo
//
//  Created by alumno5 on 27/2/16.
//  Copyright © 2016 usal. All rights reserved.
//

#import "myViewController.h"
#import <UIKit/UIKit.h>

@interface myViewController ()

@end

@implementation myViewController

#pragma mark - Ciclo de Vida
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    NSLog(@"Estoy en viewDidLoad");
}

// METODO PARA SOBRECARGAR LO QUE QUERAMOS ANTES DE APARECER LA VISTA
-(void) viewWillAppear:(BOOL)animated{
    
    //El no incluir pueden que no den problemas pero sino se invocan pueden generar bugs de pintado
    [super viewWillAppear:animated];
    
    NSLog(@"Estoy en viewWillAppear");

}

//METODO CUANDO A CARGADO LA VISTA Y EL PROPIO USUARIO VE LO QUE HEMOS DEFINIDO PARA PINTAR
- (void) viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    
    NSString *cadena;
    
    if(animated){
        cadena = @"Animado tiene valor";
    }else{
        cadena = @"Animado es vacía";
    }
    
    NSLog(@"He entrado en viewDidAppear %@", cadena);
    
    
    //CREAR UN PUTO ALERT CON TODO ESTE ZURULLO
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Title"
                                                                             message:@"Ey qué pasa!"
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    //We add buttons to the alert controller by creating UIAlertActions:
    UIAlertAction *actionOk = [UIAlertAction actionWithTitle:@"Ok"
                                                       style:UIAlertActionStyleDefault
                                                     handler:nil]; //You can use a block here to handle a press on this button
    [alertController addAction:actionOk];
    [self presentViewController:alertController animated:YES completion:nil];
    
    
}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    
    NSLog(@"[viewDidDisappear] Yame fui al viewController B");
}

//Solo aparecré cuando pasemos de un viewController a otro
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"[viewWillDisappear] Voy a ir en breves a ViewController B");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    NSLog(@"Estoy en recibiendo un Aviso de LowMemory");
}

/*
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}


/
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
//*/

@end
