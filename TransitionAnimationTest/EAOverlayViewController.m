//
//  EAOverlayViewController.m
//  TransitionAnimationTest
//
//  Created by Eric Appel on 5/17/14.
//  Copyright (c) 2014 Eric Appel. All rights reserved.
//

#import "EAOverlayViewController.h"

@interface EAOverlayViewController ()

@property (weak, nonatomic) IBOutlet UIView *actionOneContainer;
@property (weak, nonatomic) IBOutlet UIView *actionTwoContainer;

@end

@implementation EAOverlayViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)actionOne:(id)sender {
    [self animateView:self.actionOneContainer completion:^{
        [self dismissViewControllerAnimated:YES completion:nil];
    }];
}

- (IBAction)actionTwo:(id)sender {
    [self animateView:self.actionTwoContainer completion:^{
        [self dismissViewControllerAnimated:YES completion:nil];
    }];
}

- (void)animateView:(UIView *)viewToAnimate completion:(void (^)(void))completion
{
    [UIView animateWithDuration:0.3 delay:0 usingSpringWithDamping:0.4f initialSpringVelocity:0.5f options:UIViewAnimationOptionCurveEaseInOut animations:^{
                         
         CGAffineTransform scaleTransform  = CGAffineTransformMakeScale(1.2f, 1.2f);
         viewToAnimate.transform = scaleTransform;
         
     } completion:^(BOOL finished) {
         completion();
     }];
    
    [UIView animateWithDuration:0.2 delay:0.1f options:UIViewAnimationOptionCurveEaseOut animations:^{
        viewToAnimate.alpha = 0.0;
    } completion:nil];
}


@end
