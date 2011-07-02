//
//  CombatRPGAppDelegate.h
//  CombatRPG
//
//  Created by Mitchell Shelton on 6/18/11.
//  Copyright MitchellShelton.com 2011. All rights reserved.
//

@class MainViewController;

@interface CombatRPGAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MainViewController *mainViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) MainViewController *mainViewController;

@end

