//
//  CombatViewController.m
//  CombatRPG
//
//  Created by Mitchell Shelton on 6/18/11.
//  Copyright 2011 MitchellShelton.com. All rights reserved.
//

#import "CombatViewController.h"
#import "Dice.h"
#import "JSON/JSON.h"

@implementation CombatViewController

@synthesize delegate;
@synthesize messOne;
@synthesize messTwo;

- (IBAction) doSomething
{
	Dice *die = [[Dice alloc]init];
	int result = [die roll:2 d:8];
	[die release];

	
	NSString *msgOne = [[NSString alloc] initWithFormat:@"You Attack!", messOne.text];
	[messOne setText:msgOne];
	[msgOne release];
	
	NSString *msgTwo = [[NSString alloc] initWithFormat:@"The result is %d", result, messTwo.text];
	[messTwo setText:msgTwo];
	[msgTwo release];
	
	NSString *urlString = [[NSString alloc] initWithString:@"http://www.mitchellshelton.com/rpg/config.json"];
	NSURL *url = [[NSURL alloc] initWithString:urlString];	
	
	NSString *data = [[NSString alloc] initWithContentsOfURL:url];
	NSHTTPURLResponse* urlResponse = nil;

	
	NSLog(@"Response: %@", [urlResponse statusCode]);
	//if ([urlResponse statusCode] >= 200 && [urlResponse statusCode] < 300)
	//{
		// Do parsing stuff
		NSLog(@"test %@", data);
	//}
	
	
	/*
	SBJSON *jsonParser = [SBJSON new];
	NSString *jsonString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
	NSDictionary *dict = (NSDictionary*)[jsonParser objectWithString:jsonString];
	*/
	
	[urlString release];
	[url release];
	[data release];
	
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor viewFlipsideBackgroundColor];      
}


- (IBAction)done {
	[self.delegate combatViewControllerDidFinish:self];
}


/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */

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

