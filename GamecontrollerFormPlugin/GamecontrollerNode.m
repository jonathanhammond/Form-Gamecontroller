//
//  GamecontrollerNode.m
//  Gamecontroller
//
//  Created by Jonathan Hammond on 17/09/2016.
//  Copyright © 2016 Just Add Music Media. All rights reserved.
//

#import "GamecontrollerNode.h"

@implementation GamecontrollerNode

+ (NSString *)defaultName {
    return @"Gamecontroller";
}

+ (NSString *)processClassName {
    return @"GamecontrollerPatch";
}

- (instancetype)init {
    if ((self = [super init]) != nil) {
        // Inputs
        [self addPort:[[FMRPrimitiveInputPort alloc] initWithName:@"On / Off" uniqueKey:@"Form.onOffInput" defaultValue:[PMRPrimitive primitiveWithBooleanValue:NO]] portGroup:nil];
        
        // Outputs
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Color" uniqueKey:@"Form.colorOutput"] portGroup:nil];
    }
    return self;
}

- (void)dealloc {
    
}

@end
