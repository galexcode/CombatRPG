//
//  Dice.m
//  CombatRPG
//
//  Created by Mitchell Shelton on 6/18/11.
//  Copyright 2011 MitchellShelton.com. All rights reserved.
//
#import "Dice.h"

@implementation Dice

/*
 * A Dice simulator method
 * @numDie
 *	The number of dice being rolled
 * @sides
 *	The number of sides on the dice
 */
- (int)roll :(int)numDie d:(int)sides {
		
	// Handle incorrect dice or sides
	if (numDie == 0) { // Is the quantity zero?
		// There must be at least one die
		numDie = 1;
	}	
	if (sides == 0 || sides == 1) { // Are the sides zero or one?
		// Any die must have at least two sides
		sides = 2;
	}
	
	// Initialize our return value
	int result = 0;
	
	// Loop over the die rolls
	for (int i=0; i < numDie; i++) {		
		// Roll the die		
		int rollResult = (arc4random() % sides) + 1;
		
		// Add the die roll to our total result
		result = result + rollResult;		
	}
	
	// Return the result of our roll
	return result;	
}

@end

