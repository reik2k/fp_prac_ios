//
//  myViewController.h
//  HolaMundo
//
//  Created by alumno5 on 27/2/16.
//  Copyright © 2016 usal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface myViewController : UIViewController

//son Weak por defecto pero la propia viewcontroller
//lo retiene de manera strong
@property (weak, nonatomic) IBOutlet UIButton *btnClick;

//En el botón pulsas CTRL y lo arrastras al código
//Luego lo sellecionas como Action en lugar de Outlet
- (IBAction)btnClicked:(id)sender;

@end
