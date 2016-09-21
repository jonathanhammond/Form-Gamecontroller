//
//  GamePadControllerPatch.h
//  GamePadController
//
//  Created by Jonathan Hammond on 19/09/2016.
//  Copyright © 2016 Just Add Music Media. All rights reserved.
//

#import <Performer/Performer.h>
@interface GamePadControllerPatch : PMRPatch

@property (nonatomic, readonly) PMRPrimitiveInputPort *onOffInput;
@property (nonatomic, readonly) PMRPrimitiveOutputPort *valueOuput;
@property (nonatomic, readonly) PMRPrimitiveOutputPort *leftTriggerOuput;


@end
