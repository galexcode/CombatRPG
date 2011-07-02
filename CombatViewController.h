//
//  CombatViewController.h
//  CombatRPG
//
//  Created by Mitchell Shelton on 6/18/11.
//  Copyright 2011 MitchellShelton.com. All rights reserved.
//

@protocol CombatViewControllerDelegate;


@interface CombatViewController : UIViewController {
	id <CombatViewControllerDelegate> delegate;
	IBOutlet UILabel *messOne;
	IBOutlet UILabel *messTwo;
}

@property (nonatomic, assign) id <CombatViewControllerDelegate> delegate;
- (IBAction)done;

@property (nonatomic, retain) IBOutlet UILabel *messOne;
@property (nonatomic, retain) IBOutlet UILabel *messTwo;
- (IBAction) doSomething;

@end


@protocol CombatViewControllerDelegate
- (void)combatViewControllerDidFinish:(CombatViewController *)controller;
@end
