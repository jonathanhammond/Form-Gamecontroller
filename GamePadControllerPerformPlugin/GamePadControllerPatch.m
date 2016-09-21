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
 
  //  _valueOuput.stringValue = @"run";
    
     [[UIApplication sharedApplication]setIdleTimerDisabled:YES];
    
       [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(controllerWasConnected:) name:GCControllerDidConnectNotification object:nil];
     [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(controllerWasDisconnected:) name:GCControllerDidDisconnectNotification object:nil];
    
    
    
    

}


- (void)controllerWasConnected:(NSNotification *)notification {
    
    // a controller was connected
    GCController *controller = (GCController *)notification.object;
    NSString *status = [NSString stringWithFormat:@"Controller connected\nName: %@\n", controller.vendorName];
    
    _valueOuput.stringValue = status;
    NSLog (status);
    
 //   GCController *mainController;
     mainController = controller;

    NSObject *mainController;
    mainController = controller;
    
    
    [self reactToInput];
    
}

- (void)controllerWasDisconnected:(NSNotification *)notification {
    
    // a controller was disconnected
    GCController *controller = (GCController *)notification.object;
    NSString *status = [NSString stringWithFormat:@"Controller disconnected:\n%@", controller.vendorName];
    _valueOuput.stringValue = status;
    NSLog (status);
    //  self.mainController = nil;
}



- (void)reactToInput {
    
    
    
   //  _valueOuput.stringValue = @"hello";
    NSLog(@"hello");
    
    
    
    GCExtendedGamepad *profile = mainController.extendedGamepad;
    
    profile.valueChangedHandler = ^(GCExtendedGamepad *gamepad, GCControllerElement *element)

    //GCExtendedGamepad *gamepad;
   // GCControllerElement *element;
    {
         NSString *message = @"";
          _valueOuput.stringValue = @"hello2";
         NSLog(@"hellonew");
       // _leftTriggerOuput.booleanValue = gamepad.leftTrigger;
      //  CGPoint position = CGPointMake(0, 0);
       
        // left trigger
        if (gamepad.leftTrigger == element && gamepad.leftTrigger.isPressed) {
            message = @"Left Trigger";
            NSLog (@"left trigger");
            _valueOuput.stringValue = message;
        }
        
        // right trigger
        if (gamepad.rightTrigger == element && gamepad.rightTrigger.isPressed) {
            message = @"Right Trigger";
            NSLog (@"right trigger");
        }
        
        // left shoulder button
        if (gamepad.leftShoulder == element && gamepad.leftShoulder.isPressed) {
            message = @"Left Shoulder Button";
            NSLog (@"left shoulder button");
        }
        
        // right shoulder button
        if (gamepad.rightShoulder == element && gamepad.rightShoulder.isPressed) {
            message = @"Right Shoulder Button";
        }
        
        // A button
        if (gamepad.buttonA == element && gamepad.buttonA.isPressed) {
            message = @"A Button";
            
        }
        
        // B button
        if (gamepad.buttonB == element && gamepad.buttonB.isPressed) {
            message = @"B Button";
        }
        
        // X button
        if (gamepad.buttonX == element && gamepad.buttonX.isPressed) {
            message = @"X Button";
        }
        
        // Y button
        if (gamepad.buttonY == element && gamepad.buttonY.isPressed) {
            message = @"Y Button";
        }
        
        // d-pad
        if (gamepad.dpad == element) {
            if (gamepad.dpad.up.isPressed) {
                message = @"D-Pad Up";
            }
            if (gamepad.dpad.down.isPressed) {
                message = @"D-Pad Down";
            }
            if (gamepad.dpad.left.isPressed) {
                message = @"D-Pad Left";
            }
            if (gamepad.dpad.right.isPressed) {
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
        
        
        //Send information to Form
            _valueOuput.stringValue = message;
        
     //*/
    
    };


}
@end
