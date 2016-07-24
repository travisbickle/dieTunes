//
//  AppDelegate.m
//  dieTunes
//
//  Created by Travis Bickle on 21/07/16.
//  Copyright © 2016 Travis Bickle. All rights reserved.
//

#import "AppDelegate.h"
#import "killer.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    [NSTimer scheduledTimerWithTimeInterval:5.0f target:self selector:@selector(schedule:) userInfo:nil repeats:YES];
    
}

- (void) schedule:(NSTimer *)timer
{
    [killer killit];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
