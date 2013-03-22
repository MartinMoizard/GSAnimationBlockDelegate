# GSAnimationBlockDelegate
GSAnimationBlockDelegate is a lightweight library that enable the use of block instead of delegate method 
with CAAnimation

The blockOnAnimationSucceeded block is called instead of 
```objc
- (void) animationDidStart:(CAAnimation *)theAnimation
```

and the blockOnAnimationSucceeded or blockOnAnimationFailed blocks are called instead of 
```objc
- (void) animationDidStop:(CAAnimation *)theAnimation
                 finished:(BOOL)flag
```
depending on the flag value  

It is licensed under the MIT License.
## Usage
```objc
CAAnimation *animation = /* an animation */
 
GSAnimationBlockDelegate *delegate = [[GSAnimationBlockDelegate alloc] init];
delegate.blockOnAnimationSucceeded = ^{
    
};
```