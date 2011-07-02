//
//  CombatRPGAppDelegate.m
//  CombatRPG
//
//  Created by Mitchell Shelton on 6/18/11.
//  Copyright MitchellShelton.com 2011. All rights reserved.
//

#import "CombatRPGAppDelegate.h"
#import "MainViewController.h"

@implementation CombatRPGAppDelegate


@synthesize window;
@synthesize mainViewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
	MainViewController *aController = [[MainViewController alloc] initWithNibName:@"MainView" bundle:nil];
	self.mainViewController = aController;
	[aController release];
	
    mainViewController.view.frame = [UIScreen mainScreen].applicationFrame;
	[window addSubview:[mainViewController view]];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [mainViewController release];
    [window release];
    [super dealloc];
}

@end
