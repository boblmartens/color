//
//  DSEViewController.m
//  Colors
//
//  Created by Bob Martens on 3/26/13.
//  Copyright (c) 2013 Deck78. All rights reserved.
//

#import "DSEViewController.h"
#import "DSEColorViewController.h"

typedef void(^DSESeguePreparation)(UIStoryboardSegue *segue, id sender);

@interface DSEViewController ()

@property (copy, nonatomic) DSESeguePreparation showRedScene;
@property (copy, nonatomic) DSESeguePreparation showGreenScene;
@property (copy, nonatomic) DSESeguePreparation showBlueScene;

@end

@implementation DSEViewController

- (DSESeguePreparation)showRedScene {
    if (! _showRedScene) {
        _showRedScene = ^(UIStoryboardSegue *segue, id sender) {
            DSEColorViewController *redController = segue.destinationViewController;
            redController.displayColor = [UIColor redColor];
            redController.displayText = [sender titleLabel].text;
        };
    }
    return _showRedScene;
}

- (DSESeguePreparation)showGreenScene {
    if (! _showGreenScene) {
        _showGreenScene = ^(UIStoryboardSegue *segue, id sender) {
            DSEColorViewController *greenController = segue.destinationViewController;
            greenController.displayColor = [UIColor greenColor];
            greenController.displayText = [sender titleLabel].text;
        };
    }
    return _showGreenScene;
}

- (DSESeguePreparation)showBlueScene {
    if (! _showBlueScene) {
        _showBlueScene = ^(UIStoryboardSegue *segue, id sender) {
            DSEColorViewController *blueController = segue.destinationViewController;
            blueController.displayColor = [UIColor blueColor];
            blueController.displayText = [sender titleLabel].text;
        };
    }
    return _showBlueScene;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DSESeguePreparation preparation = [self valueForKey:segue.identifier];
    
    if (preparation) {
        preparation(segue, sender);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
