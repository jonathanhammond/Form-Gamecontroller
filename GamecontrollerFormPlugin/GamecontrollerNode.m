//
//  Game ControllerNode.m
//  Game Controller
//
//  Created by Jonathan Hammond on 17/09/2016.
//  Copyright © 2016 Just Add Music Media. All rights reserved.
//

#import "GamecontrollerNode.h"

@implementation GamecontrollerNode

+ (NSString *)defaultName {
    return @"Game Controller";
}

+ (NSString *)processClassName {
    return @"Game ControllerPatch";
}

- (instancetype)init {
    if ((self = [super init]) != nil) {
        // Inputs
    //    [self addPort:[[FMRPrimitiveInputPort alloc] initWithName:@"Refresh" uniqueKey:@"Form.refreshInput" defaultValue:[PMRPrimitive primitiveWithBooleanValue:NO]] portGroup:nil];
        
        // Outputs
        
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"dataForm" uniqueKey:@"Form.dataForm"] portGroup:nil];
     /*   [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Connected" uniqueKey:@"Form.connectOutput"] portGroup:nil];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Left Trigger" uniqueKey:@"Form.leftTriggerOutput"] portGroup:nil];
        
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Right Trigger" uniqueKey:@"Form.rightTriggerOutput"] portGroup:nil];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Left Shoulder Button" uniqueKey:@"Form.leftShoulderButtonOutput"] portGroup:nil];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Right Shoulder Button" uniqueKey:@"Form.rightShouldButtonOutput"] portGroup:nil];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"A button" uniqueKey:@"Form.AButtonOutput"] portGroup:nil];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"B button" uniqueKey:@"Form.BButtonOutput"] portGroup:nil];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"X button" uniqueKey:@"Form.XButtonOutput"] portGroup:nil];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Y button" uniqueKey:@"Form.YButtonOutput"] portGroup:nil];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"d-pad" uniqueKey:@"Form.d-padOutput"] portGroup:nil];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"left stick" uniqueKey:@"Form.leftStickOutput"] portGroup:nil];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"right stick" uniqueKey:@"Form.rightStickOutput"] portGroup:nil]; */
    }
    return self;
}

- (void)dealloc {
    
}

@end
