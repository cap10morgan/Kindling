//
//  KindlingAppDelegate.h
//  Kindling
//
//  Created by Wes Morgan on 10/13/10.
//  Copyright 2010 Democratic National Committee. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface KindlingAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
