//
//  GamePadControllerPatch.h
//  GamePadController
//
//  Created by Jonathan Hammond on 19/09/2016.
//  Copyright © 2016 Just Add Music Media. All rights reserved.
//

#import <Performer/Performer.h>
@interface GamePadControllerPatch : PMRPatch


@property (nonatomic, readonly) PMRPrimitiveOutputPort *connected;
@property (nonatomic, readonly) PMRPrimitiveOutputPort *leftTrigger;
@property (nonatomic, readonly) PMRPrimitiveOutputPort *rightTrigger;
@property (nonatomic, readonly) PMRPrimitiveOutputPort *leftShoulderButton;
@property (nonatomic, readonly) PMRPrimitiveOutputPort *rightShoulderButton;
@property (nonatomic, readonly) PMRPrimitiveOutputPort *aButton;
@property (nonatomic, readonly) PMRPrimitiveOutputPort *bButton;
@property (nonatomic, readonly) PMRPrimitiveOutputPort *xButton;
@property (nonatomic, readonly) PMRPrimitiveOutputPort *yButton;
@property (nonatomic, readonly) PMRPrimitiveOutputPort *dPadRight;
@property (nonatomic, readonly) PMRPrimitiveOutputPort *dPadLeft;
@property (nonatomic, readonly) PMRPrimitiveOutputPort *dPadUp;
@property (nonatomic, readonly) PMRPrimitiveOutputPort *dPadDown;

@property (nonatomic, readonly) PMRPrimitiveOutputPort *rightStickxPos;





// left trigger
// right trigger
// left shoulder button
// right shoulder button
// A button
// B button
// X button
// Y button

@end
