//
//  AboutViewController.h
//  CombatRPG
//
//  Created by Mitchell Shelton on 6/18/11.
//  Copyright 2011 MitchellShelton.com. All rights reserved.
//

@protocol AboutViewControllerDelegate;


@interface AboutViewController : UIViewController {
	id <AboutViewControllerDelegate> delegate;
}

@property (nonatomic, assign) id <AboutViewControllerDelegate> delegate;
- (IBAction)done;

@end


@protocol AboutViewControllerDelegate
- (void)aboutViewControllerDidFinish:(AboutViewController *)controller;
@end
