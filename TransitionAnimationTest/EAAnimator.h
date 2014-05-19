//
//  EAAnimator.h
//  TransitionAnimationTest
//
//  Created by Eric Appel on 5/17/14.
//  Copyright (c) 2014 Eric Appel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EAAnimator : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign) BOOL isDismissing;

@end
