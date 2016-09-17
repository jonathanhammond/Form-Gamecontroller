//
//  GamecontrollerPlugin.m
//  Gamecontroller
//
//  Created by Jonathan Hammond on 17/09/2016.
//  Copyright © 2016 Just Add Music Media. All rights reserved.
//

#import "GamecontrollerPlugin.h"
#import "GamecontrollerNode.h"

@implementation GamecontrollerPlugin

+ (NSString *)name {
    return @"Gamecontroller";
}

+ (NSString *)description {
    return @"Created by Jonathan Hammond on 17/09/2016";
}

+ (NSArray *)nodeClasses {
    return @[[GamecontrollerNode class]];
}

@end
