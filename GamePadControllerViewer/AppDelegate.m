//
//  GamePadControllerPatch.m
//  GamePadController
//
//  Created by Jonathan Hammond on 19/09/2016.
//  Copyright © 2016 Just Add Music Media. All rights reserved.
//

#import "GamePadControllerPatch.h"
@import GameController;

@implementation GamePadControllerPatch {
    GCController *_mainController;
}

- (BOOL)isConsumerPatch {
    return YES;
}

- (void)processPatchWithContext:(PMRProcessContext *)context {
    [UIApplication sharedApplication].idleTimerDisabled = YES;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(controllerWasConnected:) name:GCControllerDidConnectNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(controllerWasDisconnected:) name:GCControllerDidDisconnectNotification object:nil];
}

- (void)controllerWasConnected:(NSNotification *)notification {
    _connected.booleanValue = YES;
    _mainController = (GCController *)notification.object;
    [self setValueChangeHandler];
}

- (void)controllerWasDisconnected:(NSNotification *)notification {
    _connected.booleanValue = NO;
    _mainController = nil;
}

- (void)setValueChangeHandler {
    _mainController.extendedGamepad.valueChangedHandler = ^(GCExtendedGamepad *gamepad, GCControllerElement *element) {
        // left trigger
        if (gamepad.leftTrigger == element) {
            _leftTrigger.numberValue = gamepad.leftTrigger.value;
        }
        // right trigger
        else if (gamepad.rightTrigger == element) {
            _rightTrigger.numberValue = gamepad.rightTrigger.value;
        }
        // left shoulder button
        else if (gamepad.leftShoulder == element) {
            _leftShoulderButton.numberValue = gamepad.leftShoulder.value;
        }
        // right shoulder button
        else if (gamepad.rightShoulder == element) {
            _rightShoulderButton.numberValue = gamepad.rightShoulder.value;
        }
        // A button
        else if (gamepad.buttonA == element) {
            _aButton.booleanValue = gamepad.buttonA.isPressed;
        }
        // B button
        else if (gamepad.buttonB == element) {
            _bButton.booleanValue = gamepad.buttonB.isPressed;
        }
        // X button
        else if (gamepad.buttonX == element) {
            _xButton.booleanValue = gamepad.buttonX.isPressed;
        }
        // Y button
        else if (gamepad.buttonY == element) {
            _yButton.booleanValue = gamepad.buttonY.isPressed;
        }
        // d-pad
        else if (gamepad.dpad == element) {
            _dPadUp.booleanValue = gamepad.dpad.up.isPressed;
            _dPadDown.booleanValue = gamepad.dpad.down.isPressed;
            _dPadLeft.booleanValue = gamepad.dpad.left.isPressed;
            _dPadRight.booleanValue = gamepad.dpad.right.isPressed;
        }
        // left stick
        else if (gamepad.leftThumbstick == element) {
            _leftStickXPos.numberValue = gamepad.leftThumbstick.xAxis.value;
            _leftStickYPos.numberValue = gamepad.leftThumbstick.yAxis.value;
        }
        // right stick
        else if (gamepad.rightThumbstick == element) {
            _rightStickXPos.numberValue = gamepad.rightThumbstick.xAxis.value;
            _rightStickYPos.numberValue = gamepad.rightThumbstick.yAxis.value;
        }
    };
}

@end
