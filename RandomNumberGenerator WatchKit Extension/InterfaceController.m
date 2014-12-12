//
//  InterfaceController.m
//  RandomNumberGenerator WatchKit Extension
//
//  Created by Bennett Gaddes (2007 Macbook) on 11/22/14.
//  Copyright (c) 2014 Bennett Gaddes. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
//@property (strong, nonatomic) IBOutlet WKInterfaceImage *Image;
@property (strong, nonatomic) IBOutlet WKInterfaceImage *staticImage;

@end


@implementation InterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        //WKInterfaceImage * Image = [UIImage imageNamed:@"krkr.png"];
        NSLog(@"%@ initWithContext", self);
        
    }
    return self;
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
    
    NSData *imageData;
    
    imageData = UIImagePNGRepresentation( [UIImage imageNamed:@"krkr.png"]);
    
    [self.staticImage setImageData:imageData];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

@end



