//
//  MainViewController.h
//  CombatRPG
//
//  Created by Mitchell Shelton on 6/18/11.
//  Copyright MitchellShelton.com 2011. All rights reserved.
//

#import "CombatViewController.h"
#import "AboutViewController.h"
#import "SBJson.h"

@interface MainViewController : UIViewController <CombatViewControllerDelegate, AboutViewControllerDelegate> {
}

- (IBAction)showAbout;
- (IBAction)showCombat;

@end
