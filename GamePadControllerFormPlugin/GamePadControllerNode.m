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
        [self addPort:[[FMRPrimitiveInputPort alloc] initWithName:@"On / Off" uniqueKey:@"Form.onOffInput" defaultValue:[PMRPrimitive primitiveWithBooleanValue:NO]] portGroup:nil];
        
        // Outputs
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Color" uniqueKey:@"Form.valueOuput"] portGroup:nil];
    [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"LeftTrigger" uniqueKey:@"Form.leftTriggerOuput"] portGroup:nil];
}

    return self;
}

- (void)dealloc {
    
}

@end
