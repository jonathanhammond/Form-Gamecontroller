//
//  GamePadControllerNode.m
//  GamePadController
//
//  Created by Jonathan Hammond on 19/09/2016.
//  Copyright © 2016 Just Add Music Media. All rights reserved.
//

#import "GamePadControllerNode.h"

@implementation GamePadControllerNode

+ (NSString *)defaultName {
    return @"GamePadController";
}

+ (NSString *)processClassName {
    return @"GamePadControllerPatch";
}

- (instancetype)init {
    if ((self = [super init]) != nil) {
        // Inputs
//        [self addPort:[[FMRPrimitiveInputPort alloc] initWithName:@"On / Off" uniqueKey:@"Form.onOffInput" defaultValue:[PMRPrimitive primitiveWithBooleanValue:NO]] portGroup:nil];
        
        // Outputs
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Connected" uniqueKey:@"Form.connected"] portGroup:@"Connect"];
    [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Left Trigger" uniqueKey:@"Form.leftTrigger"] portGroup:@"Triggar"];
    [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Right Trigger" uniqueKey:@"Form.rightTrigger"] portGroup:@"Triggar"];
    [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Left Shoulder Button" uniqueKey:@"Form.leftShoulderButton"] portGroup:@"Shoulder Buttons"];
    [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Right Shoulder Button" uniqueKey:@"Form.rightShoulderButton"] portGroup:@"Shoulder Buttons"];
    [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"A button" uniqueKey:@"Form.aButton"] portGroup:@"Buttons"];
    [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"B button" uniqueKey:@"Form.BButton"] portGroup:@"Buttons"];
    [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"X button" uniqueKey:@"Form.XButton"] portGroup:@"Buttons"];
    [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Y button" uniqueKey:@"Form.YButton"] portGroup:@"Buttons"];
}

    
    // left trigger
    // right trigger
    // left shoulder button
    // right shoulder button
    // A button
    // B button
    // X button
    // Y button
    
    
    
    
    
    
    
    
    return self;
}

- (void)dealloc {
    
}

@end
