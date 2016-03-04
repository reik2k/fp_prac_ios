//
//  LoginViewController.h
//  Login
//
//  Created by rodrigo on 4/3/16.
//  Copyright © 2016 USAL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *tfUsuario;
@property (weak, nonatomic) IBOutlet UITextField *tfPassword;
-(IBAction)dismissTeclado:(id)sender;
-(IBAction)hacerLogin:(id)sender;
@end
