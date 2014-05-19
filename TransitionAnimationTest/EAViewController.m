//
//  EAViewController.m
//  TransitionAnimationTest
//
//  Created by Eric Appel on 5/17/14.
//  Copyright (c) 2014 Eric Appel. All rights reserved.
//

#import "EAViewController.h"
#import "EAOverlayViewController.h"
#import "EAAnimator.h"

@interface EAViewController ()

@end

@implementation EAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"overlaySegue"]) {
        UIViewController *overlayController = segue.destinationViewController;
        
        overlayController.transitioningDelegate = self;
        overlayController.modalPresentationStyle = UIModalPresentationCustom;
    }
}

#pragma mark - UIViewControllerTransitioningDelegate

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented
                                                                  presentingController:(UIViewController *)presenting
                                                                      sourceController:(UIViewController *)source {
    
    EAAnimator *animator = [EAAnimator new];
    return animator;
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    EAAnimator *animator = [EAAnimator new];
    animator.isDismissing = YES;
    return animator;
}


@end
