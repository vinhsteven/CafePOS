//
//  LoginController.h
//  CafePOS
//
//  Created by Mr.J on 5/24/14.
//  Copyright (c) 2014 ___NhuanQuang___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginController : UIViewController<UITextFieldDelegate>
{
    BOOL isInput;
}

@property (weak, nonatomic) IBOutlet UIView *viewInput;
@property (weak, nonatomic) IBOutlet UITextField *txtUserName;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;
@end
