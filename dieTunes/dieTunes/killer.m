//
//  killit.m
//  dieTunes
//
//  Created by Travis Bickle on 21/07/16.
//  Copyright © 2016 Travis Bickle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "killer.h"
@import AppKit;

@implementation killer : NSObject 

+ (BOOL)killit {
    
    NSArray *runningApplications = [[NSWorkspace sharedWorkspace] runningApplications];
    NSString *theName;
    BOOL TerminatedAtLeastOne = '\0';
    
    for ( NSRunningApplication *app in runningApplications ) {
        theName = [app localizedName];
        if( [theName isEqualToString:@"iTunes"] ) {
            TerminatedAtLeastOne = [app forceTerminate];
        }
    }

    return TerminatedAtLeastOne;
}

@end



