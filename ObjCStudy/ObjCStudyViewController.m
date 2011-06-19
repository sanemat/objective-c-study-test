//
//  ObjCStudyViewController.m
//  ObjCStudy
//
//  Created by sanemat on 11/06/16.
//  Copyright 2011 na. All rights reserved.
//

#import "ObjCStudyViewController.h"

@implementation ObjCStudyViewController
@synthesize labelFizzBuzz;

-(void)dealloc
{
   [super dealloc];
}

-(void)didReceiveMemoryWarning
{
   // Releases the view if it doesn't have a superview.
   [super didReceiveMemoryWarning];

   // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

-(void)viewDidLoad
{
   NSMutableString *label    = [NSMutableString string];
   FizzBuzz        *fizzBuzz = [[FizzBuzz alloc] init];

   for (int i = 1; i <= 30; i++)
   {
      [fizzBuzz input: i];
      [label appendFormat: [fizzBuzz say]];
      [label appendFormat: @" "];
   }
   labelFizzBuzz.text = label;
   //if label release, then application is down.
//    [label release];
   [fizzBuzz release];
   [super viewDidLoad];
}


-(void)viewDidUnload
{
   [super viewDidUnload];
   // Release any retained subviews of the main view.
   // e.g. self.myOutlet = nil;
}

-(BOOL)shouldAutorotateToInterfaceOrientation: (UIInterfaceOrientation) interfaceOrientation
{
   // Return YES for supported orientations
   return(interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
