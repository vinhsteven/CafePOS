//
//  LoginController.m
//  CafePOS
//
//  Created by Mr.J on 5/24/14.
//  Copyright (c) 2014 ___NhuanQuang___. All rights reserved.
//

#import "LoginController.h"
#import <QuartzCore/QuartzCore.h>
#import "CashierController.h"

@interface LoginController ()

@end

@implementation LoginController

@synthesize viewInput,txtPassword,txtUserName;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) viewDidAppear:(BOOL)animated
{
    // load background login view
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"bgLogin.png"]]];
    // draw logo
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(410.0f, 97.0f, 200.0f, 200.0f)];
    [imageView setImage:[UIImage imageNamed:@"imgLogo.png"]];
    [self.view addSubview:imageView];
    // view input username and password
    self.viewInput.layer.cornerRadius = 5;
    self.viewInput.layer.masksToBounds = YES;
    
    [txtUserName setFrame:CGRectMake(15, 10, 280, 35)];
    [txtUserName setPlaceholder:NSLocalizedString(@"username",nil)];
    //[txtUserName setPlaceholder:[[NSBundle mainBundle] localizedStringForKey:(@"username") value:@"" table:nil]];
    [txtUserName setFont:[UIFont systemFontOfSize:17.0f]];
    [txtUserName setDelegate:self];
    
    [txtPassword setFrame:CGRectMake(15, 60, 280, 35)];
    [txtPassword setFont:[UIFont systemFontOfSize:17.0f]];
    [txtPassword setPlaceholder:NSLocalizedString(@"password",nil)];
    [txtPassword setSecureTextEntry:YES];
    [txtPassword setDelegate:self];
    // draw line
    UIView * line = [[UIView alloc]initWithFrame:CGRectMake(15, 52, 280, 1)];
    [line setBackgroundColor:[UIColor colorWithRed:232.0f/255 green:232.0f/255 blue:232.0f/255 alpha:1.0]];
    [self.viewInput addSubview:line];
    
    // add button and label remember me
    UIButton * btnRememberMe = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnRememberMe setBackgroundImage:[UIImage imageNamed:@"btnRememberMe.png"] forState:UIControlStateNormal];
    [btnRememberMe setBackgroundImage:[UIImage imageNamed:@"btnRememberMe_Selected.png"] forState:UIControlStateSelected];
    [btnRememberMe setFrame:CGRectMake(viewInput.frame.origin.x, viewInput.frame.origin.y + viewInput.frame.size.height + 15 , 19.0f, 19.0f)];
    [self.view addSubview:btnRememberMe];
    
    UILabel * lbRememberMe = [[UILabel alloc]initWithFrame:CGRectMake(btnRememberMe.frame.origin.x + 30, btnRememberMe.frame.origin.y, 120, 20)];
    [lbRememberMe setText:NSLocalizedString(@"remember_me",nil)];
    [lbRememberMe setTextColor:[UIColor whiteColor]];
    [lbRememberMe setFont:[UIFont systemFontOfSize:14.0f]];
    [self.view addSubview:lbRememberMe];
    
    // add button forgot password ?
    UIButton * btnForgotPassword = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnForgotPassword setTitle:NSLocalizedString(@"forgot_password",nil) forState:UIControlStateNormal];
    [btnForgotPassword setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btnForgotPassword setFrame:CGRectMake(btnRememberMe.frame.origin.x + 150, btnRememberMe.frame.origin.y, 200, 20)];
    [btnForgotPassword.titleLabel setFont:[UIFont systemFontOfSize:14.0f]];
    //[btnForgotPassword setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    [self.view addSubview:btnForgotPassword];
    
    // add button login
    UIButton * btnLogin = [[UIButton alloc]init];
    [btnLogin setTitle:NSLocalizedString(@"login",nil) forState:UIControlStateNormal];
    [btnLogin.titleLabel setFont:[UIFont systemFontOfSize:20.0f]];
    [btnLogin setFrame:CGRectMake(viewInput.frame.origin.x, btnRememberMe.frame.origin.y + 40,  310.0f, 50.0f)];
    [btnLogin setBackgroundColor:[UIColor colorWithRed:46.0f/255 green:23.0f/255 blue:1.0f/255 alpha:1.0f]];
    btnLogin.layer.cornerRadius = 5;
    btnLogin.layer.masksToBounds = YES;
    [btnLogin addTarget:self action:@selector(loginAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnLogin];
}

- (void) loginAction {
    CashierController *controller = [[CashierController alloc] initWithNibName:@"CashierController" bundle:nil];
    [self presentViewController:controller animated:YES completion:nil];
}

- (NSUInteger)supportedInterfaceOrientations

{
    return UIInterfaceOrientationMaskLandscapeLeft|UIInterfaceOrientationLandscapeRight;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextFieldDelegate
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if (!isInput) {
        // start animation
        [UIView animateWithDuration:0.5f
                              delay:0.0f
                            options:(UIViewAnimationOptionTransitionNone)
                         animations:^{
                             //[self.view setFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y+50.0f, 1024.0f, 768.0f)];
                             CGRect frame = self.viewInput.frame;
                             //frame.origin.x = 0;
                             frame.origin.y -= 30;
                             [self.viewInput setFrame:frame];
                         }
                         completion:^(BOOL finished){
                             isInput = true;
                         }];
        
    }
    
}
@end
