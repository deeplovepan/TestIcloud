//
//  TestIcloudViewController.m
//  TestIcloud
//
//  Created by Peter Pan on 12/4/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "TestIcloudViewController.h"

@interface TestIcloudViewController ()

@end

@implementation TestIcloudViewController

+(void)getDataFromIcloud
{
    NSUbiquitousKeyValueStore *icloudStore = [NSUbiquitousKeyValueStore defaultStore];
    
    if([icloudStore stringForKey:@"name"])
    {
        
    }
}

+(void)setNameFromIcloud
{
    NSUbiquitousKeyValueStore *icloudStore = [NSUbiquitousKeyValueStore defaultStore];

    [icloudStore setString:@"peter" forKey:@"name"];
    if([icloudStore synchronize])
    {
        
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
