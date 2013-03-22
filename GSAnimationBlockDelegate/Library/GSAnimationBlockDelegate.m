//
//  GSAnimationBlockDelegate.m
//  GSAnimationBlockDelegate
//
//  Created by Martin Moizard on 3/22/13.
//  Copyright (c) 2013 Martin Moizard. All rights reserved.
//

#import "GSAnimationBlockDelegate.h"

@implementation GSAnimationBlockDelegate

@synthesize blockOnAnimationStarted;
@synthesize blockOnAnimationSucceeded;
@synthesize blockOnAnimationFailed;

- (void) animationDidStart:(CAAnimation *)theAnimation
{
    
    if (!self.blockOnAnimationStarted) {
        return;
    }
    
    self.blockOnAnimationStarted();
}

- (void) animationDidStop:(CAAnimation *)theAnimation finished:(BOOL)flag
{
    if (flag) {
        if (!self.blockOnAnimationSucceeded) {
            return;
        }
        
        self.blockOnAnimationSucceeded();
        return;
    }
    
    if (!self.blockOnAnimationFailed) {
        return;
    }
    
    self.blockOnAnimationFailed();
}

@end
