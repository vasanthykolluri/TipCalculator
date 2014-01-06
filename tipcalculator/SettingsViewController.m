//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Vasanthy Kolluri on 1/5/14.
//  Copyright (c) 2014 Vasanthy Kolluri. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaulttipControl;
- (IBAction)onTap:(id)sender;

@end

@implementation SettingsViewController

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
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int default_tip_index = [defaults integerForKey:@"default_tip_index"];
    self.defaulttipControl.selectedSegmentIndex = default_tip_index;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(id)sender {
    
    int index = self.defaulttipControl.selectedSegmentIndex;

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:index forKey:@"default_tip_index"];
    [defaults synchronize];
}

@end
