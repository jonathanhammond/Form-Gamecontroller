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
        // Outputs
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Connected" uniqueKey:@"Form.connected"] portGroup:@"Connected"];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Left Trigger" uniqueKey:@"Form.leftTrigger"] portGroup:@"Triggar"];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Right Trigger" uniqueKey:@"Form.rightTrigger"] portGroup:@"Triggar"];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Left Shoulder Button" uniqueKey:@"Form.leftShoulderButton"] portGroup:@"Shoulder Buttons"];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Right Shoulder Button" uniqueKey:@"Form.rightShoulderButton"] portGroup:@"Shoulder Buttons"];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"A button" uniqueKey:@"Form.aButton"] portGroup:@"Buttons"];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"B button" uniqueKey:@"Form.BButton"] portGroup:@"Buttons"];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"X button" uniqueKey:@"Form.XButton"] portGroup:@"Buttons"];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Y button" uniqueKey:@"Form.YButton"] portGroup:@"Buttons"];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Dpad Up" uniqueKey:@"Form.dPadUp"] portGroup:@"Dpad"];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Dpad Down" uniqueKey:@"Form.dPadDown"] portGroup:@"Dpad"];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Dpad Left" uniqueKey:@"Form.dPadLeft"] portGroup:@"Dpad"];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Dpad Right" uniqueKey:@"Form.dPadRight"] portGroup:@"Dpad"];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Left Stick X" uniqueKey:@"Form.leftStickXPos"] portGroup:@"Sticks"];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Left Stick Y" uniqueKey:@"Form.leftStickYPos"] portGroup:@"Sticks"];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Right Stick X" uniqueKey:@"Form.rightStickXPos"] portGroup:@"Sticks"];
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Right Stick Y" uniqueKey:@"Form.rightStickYPos"] portGroup:@"Sticks"];
    }
    
    return self;
}

@end
