//
//  GamePadControllerPlugin.m
//  GamePadController
//
//  Created by Jonathan Hammond on 19/09/2016.
//  Copyright © 2016 Just Add Music Media. All rights reserved.
//

#import "GamePadControllerPlugin.h"
#import "GamePadControllerNode.h"

@implementation GamePadControllerPlugin

+ (NSString *)name {
    return @"GamePadController";
}

+ (NSString *)description {
    return @"Created by Jonathan Hammond on 19/09/2016";
}

+ (NSArray *)nodeClasses {
    return @[[GamePadControllerNode class]];
}

@end
