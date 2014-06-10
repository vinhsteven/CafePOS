//
//  CashierController.m
//  Cashier
//
//  Created by Mr.J on 6/8/14.
//  Copyright (c) 2014 ___NhuanQuang___. All rights reserved.
//

#import "CashierController.h"

@interface CashierController ()

@end

@implementation CashierController

@synthesize orderController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (void) viewWillAppear:(BOOL)animated
{
    // add order view
    orderController = [[OrderViewController alloc]initWithNibName:@"OrderViewController" bundle:nil];
    [orderController.view setFrame:CGRectMake(680,64, 315.0f, 748.0f)];
    [self.view addSubview:orderController.view];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
