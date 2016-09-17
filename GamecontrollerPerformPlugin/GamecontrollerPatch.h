//
//  GamecontrollerPatch.h
//  Gamecontroller
//
//  Created by Jonathan Hammond on 17/09/2016.
//  Copyright © 2016 Just Add Music Media. All rights reserved.
//

#import <Performer/Performer.h>

@interface GamecontrollerPatch : PMRPatch

@property (nonatomic, readonly) PMRPrimitiveInputPort *onOffInput;
@property (nonatomic, readonly) PMRPrimitiveOutputPort *colorOutput;

@end
