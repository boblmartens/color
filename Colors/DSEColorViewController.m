//
//  DSEColorViewController.m
//  Colors
//
//  Created by Bob Martens on 3/26/13.
//  Copyright (c) 2013 Deck78. All rights reserved.
//

#import "DSEColorViewController.h"

@interface DSEColorViewController ()
@property (weak, nonatomic) IBOutlet UILabel *colorLabel;

@end

@implementation DSEColorViewController

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

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.view.backgroundColor = self.displayColor;
    self.colorLabel.text = self.displayText;
    self.colorLabel.textColor = self.displayColor;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
