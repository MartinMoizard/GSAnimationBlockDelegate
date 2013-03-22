//
//  GSAnimationBlockDelegate.h
//  GSAnimationBlockDelegate
//
//  Created by Martin Moizard on 3/22/13.
//  Copyright (c) 2013 Martin Moizard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface GSAnimationBlockDelegate : NSObject

/**
 *  Block to call when animation is started
 */
@property (nonatomic, strong) void(^blockOnAnimationStarted)(void);

/**
 *  Block to call when animation is successful
 */
@property (nonatomic, strong) void(^blockOnAnimationSucceeded)(void);

/**
 *  Block to call when animation fails
 */
@property (nonatomic, strong) void(^blockOnAnimationFailed)(void);

/**
 * Called when the animation begins its active duration.
 */
- (void)animationDidStart:(CAAnimation *)theAnimation;

/** Called when the animation either completes its active duration or
 * is removed from the object it is attached to (i.e. the layer). 'flag'
 * is true if the animation reached the end of its active duration
 * without being removed.
*/
- (void)animationDidStop:(CAAnimation *)theAnimation finished:(BOOL)flag;

@end
