//
//  GamePadControllerPatch.m
//  GamePadController
//
//  Created by Jonathan Hammond on 19/09/2016.
//  Copyright © 2016 Just Add Music Media. All rights reserved.
//

#import "GamePadControllerPatch.h"
@import GameController;


@implementation GamePadControllerPatch

GCController *mainController;



- (BOOL)isConsumerPatch {
    
    return YES;
    
}

- (void)processPatchWithContext:(PMRProcessContext *)context {
 
    
     [[UIApplication sharedApplication]setIdleTimerDisabled:YES];
    
     [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(controllerWasConnected:) name:GCControllerDidConnectNotification object:nil];
     [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(controllerWasDisconnected:) name:GCControllerDidDisconnectNotification object:nil];
    
}


- (void)controllerWasConnected:(NSNotification *)notification {
    
    // a controller was connected
    GCController *controller = (GCController *)notification.object;
    NSString *status = [NSString stringWithFormat:@"Controller connected\nName: %@\n", controller.vendorName];
    _connected.stringValue = status;
    mainController = controller;

    NSObject *mainController;
    mainController = controller;
    
    [self reactToInput];
    
}

- (void)controllerWasDisconnected:(NSNotification *)notification {
    
    // a controller was disconnected
    GCController *controller = (GCController *)notification.object;
    NSString *status = [NSString stringWithFormat:@"Controller disconnected:\n%@", controller.vendorName];
_connected.stringValue = status;
    mainController = nil;
}


- (void)reactToInput {
    
    
    
    NSLog(@"hello");
    
    GCExtendedGamepad *profile = mainController.extendedGamepad;
    
    profile.valueChangedHandler = ^(GCExtendedGamepad *gamepad, GCControllerElement *element)

    {
         NSString *message = @"";
        _leftTrigger.numberValue = 0.0;
        _rightTrigger.numberValue = 0.0;
        _leftShoulderButton.numberValue = 0.0;
        _rightShoulderButton.numberValue = 0.0;
        _aButton.numberValue = 0.0;
        _bButton.numberValue = 0.0;
        _xButton.numberValue = 0.0;
        _yButton.numberValue = 0.0;
        _dPadUp.numberValue = 0.0;
        _dPadDown.numberValue = 0.0;
        _dPadLeft.numberValue = 0.0;
        _dPadRight.numberValue = 0.0;

        NSLog(@"hellonew");
       
        


        
        
        // left trigger
        if (gamepad.leftTrigger == element && gamepad.leftTrigger.isPressed) {
           _leftTrigger.numberValue = 1.0;
            
            
            message = @"Left Trigger";
            NSLog (@"left trigger");
            
        }
        
        // right trigger
        if (gamepad.rightTrigger == element && gamepad.rightTrigger.isPressed) {
            _rightTrigger.numberValue = 1.0;
            
            message = @"Right Trigger";
            NSLog (@"right trigger");
        }
        
        // left shoulder button
        if (gamepad.leftShoulder == element && gamepad.leftShoulder.isPressed) {
            _leftShoulderButton.numberValue = 1.0;
            message = @"Left Shoulder Button";
            NSLog (@"left shoulder button");
        }
        
        // right shoulder button
        if (gamepad.rightShoulder == element && gamepad.rightShoulder.isPressed) {
            _rightShoulderButton.numberValue = 1.0;
            message = @"Right Shoulder Button";
        }
        
        // A button
        if (gamepad.buttonA == element && gamepad.buttonA.isPressed) {
            _aButton.numberValue = 1.0;
            message = @"A Button";
            
        }
        
        // B button
        if (gamepad.buttonB == element && gamepad.buttonB.isPressed) {
            _bButton.numberValue = 1.0;
            message = @"B Button";
        }
        
        // X button
        if (gamepad.buttonX == element && gamepad.buttonX.isPressed) {
            _xButton.numberValue = 1.0;
            message = @"X Button";
        }
        
        // Y button
        if (gamepad.buttonY == element && gamepad.buttonY.isPressed) {
            _yButton.numberValue = 1.0;
            message = @"Y Button";
        }
        
        // d-pad
        if (gamepad.dpad == element) {
            if (gamepad.dpad.up.isPressed) {
                _dPadUp.numberValue = 1.0;
                message = @"D-Pad Up";
            }
            if (gamepad.dpad.down.isPressed) {
                _dPadDown.numberValue = 1.0;
                message = @"D-Pad Down";
            }
            if (gamepad.dpad.left.isPressed) {
                _dPadLeft.numberValue = 1.0;
                message = @"D-Pad Left";
            }
            if (gamepad.dpad.right.isPressed) {
                _dPadRight.numberValue = 1.0;
                message = @"D-Pad Right";
            }
        }
        
        // left stick
        if (gamepad.leftThumbstick == element) {
            if (gamepad.leftThumbstick.up.isPressed) {
                message = [NSString stringWithFormat:@"Left Stick %f", gamepad.leftThumbstick.yAxis.value];
            }
            if (gamepad.leftThumbstick.down.isPressed) {
                message = [NSString stringWithFormat:@"Left Stick %f", gamepad.leftThumbstick.yAxis.value];
            }
            if (gamepad.leftThumbstick.left.isPressed) {
                message = [NSString stringWithFormat:@"Left Stick %f", gamepad.leftThumbstick.xAxis.value];
            }
            if (gamepad.leftThumbstick.right.isPressed) {
                message = [NSString stringWithFormat:@"Left Stick %f", gamepad.leftThumbstick.xAxis.value];
            }
        //    position = CGPointMake(gamepad.leftThumbstick.xAxis.value, gamepad.leftThumbstick.yAxis.value);
        }
        
        // right stick
        if (gamepad.rightThumbstick == element) {
            if (gamepad.rightThumbstick.up.isPressed) {
                message = [NSString stringWithFormat:@"Right Stick %f", gamepad.rightThumbstick.yAxis.value];
            }
            if (gamepad.rightThumbstick.down.isPressed) {
                _rightStickxPos.numberValue = gamepad.rightThumbstick.yAxis.value;
                message = [NSString stringWithFormat:@"Right Stick %f", gamepad.rightThumbstick.yAxis.value];
            }
            if (gamepad.rightThumbstick.left.isPressed) {
                message = [NSString stringWithFormat:@"Right Stick %f", gamepad.rightThumbstick.xAxis.value];
            }
            if (gamepad.rightThumbstick.right.isPressed) {
                message = [NSString stringWithFormat:@"Right Stick %f", gamepad.rightThumbstick.xAxis.value];
            }
         //   position = CGPointMake(gamepad.rightThumbstick.xAxis.value, gamepad.rightThumbstick.yAxis.value);
        }
        
       // _leftTrigger.booleanValue = false;
        //Send information to Form
            _connected.stringValue = message;
        
    
    };


}
@end
