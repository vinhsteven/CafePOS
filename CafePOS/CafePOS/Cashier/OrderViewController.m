//
//  OrderViewController.m
//  Cashier
//
//  Created by Mr.J on 6/8/14.
//  Copyright (c) 2014 ___NhuanQuang___. All rights reserved.
//

#import "OrderViewController.h"

@interface OrderViewController ()

@end

@implementation OrderViewController

@synthesize btnAddOrder,btnDeleteOrder,btnListOrder;
@synthesize btnCheckOut;

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
    // draw view
    // add btn
    [btnAddOrder setBackgroundImage:[UIImage imageNamed:@"btnAddOrder.png"] forState:UIControlStateNormal];
    [btnDeleteOrder setBackgroundImage:[UIImage imageNamed:@"btnDeleteOrder.png"] forState:UIControlStateNormal];
    [btnListOrder setBackgroundImage:[UIImage imageNamed:@"btnListOrder.png"] forState:UIControlStateNormal];
    
    [btnCheckOut setBackgroundColor:[UIColor colorWithRed:72.0f/255 green:207.0f/255 blue:173.0f/255 alpha:1.0f]];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
