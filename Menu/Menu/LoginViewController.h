//
//  LoginViewController.h
//  Menu
//
//  Created by alumno5 on 4/3/16.
//  Copyright © 2016 usal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *btnEmail;
@property (weak, nonatomic) IBOutlet UITextField *btnName;
@property (weak, nonatomic) IBOutlet UITextField *btnPassword;
@property (weak, nonatomic) IBOutlet UIButton *btnSend;

@end
