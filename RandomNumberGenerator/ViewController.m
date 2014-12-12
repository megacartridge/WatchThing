//
//  ViewController.m
//  RandomNumberGenerator
//
//  Created by Bennett Gaddes (2007 Macbook) on 11/22/14.
//  Copyright (c) 2014 Bennett Gaddes. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)generate:(id)sender {
    
    int randomNumber = arc4random() % 100;
    
    label.text = [NSString stringWithFormat:@"Random number: %i", randomNumber];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
