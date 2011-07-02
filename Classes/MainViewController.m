//
//  MainViewController.m
//  CombatRPG
//
//  Created by Mitchell Shelton on 6/18/11.
//  Copyright MitchellShelton.com 2011. All rights reserved.
//

#import "MainViewController.h"
#import "MainView.h"

#import "SBJson.h"
@implementation MainViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}


/*
 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
 - (void)viewDidLoad {
 [super viewDidLoad];
 }
 */


/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */


- (void)aboutViewControllerDidFinish:(AboutViewController *)controller {
    
	[self dismissModalViewControllerAnimated:YES];
}


- (IBAction)showAbout {    
	
	AboutViewController *controller = 
	[[AboutViewController alloc] initWithNibName:@"AboutView" bundle:nil];
	controller.delegate = self;
	
	controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:controller animated:YES];
	
	[controller release];
}

- (void)combatViewControllerDidFinish:(CombatViewController *)controller {
    
	[self dismissModalViewControllerAnimated:YES];
}

- (IBAction)showCombat {    
	
	CombatViewController *controller = 
	[[CombatViewController alloc] initWithNibName:@"CombatView" bundle:nil];
	controller.delegate = self;
	
	controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:controller animated:YES];
	
	[controller release];
}



// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations
	if (interfaceOrientation == UIInterfaceOrientationPortrait ||
		interfaceOrientation == UIInterfaceOrientationLandscapeLeft ||
		interfaceOrientation == UIInterfaceOrientationLandscapeRight) {
		return YES;
	}
	else {
		return NO;
	}

}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
