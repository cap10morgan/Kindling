//
//  KindlingAppDelegate.m
//  Kindling
//
//  Created by Wes Morgan on 10/13/10.
//  Copyright 2010 Democratic National Committee. All rights reserved.
//

#import "KindlingAppDelegate.h"

@implementation KindlingAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    NSURLRequest *roomsRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://c93012a01f7aa87219840e462124bc85ff03d192:X@dnclabs.campfirenow.com/rooms.xml"]];
	NSData *responseData = [NSURLConnection sendSynchronousRequest: roomsRequest returningResponse:NULL error:NULL];
    NSString *roomsXML = [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding];
    NSLog(@"Rooms request response:\n%@", roomsXML);
}

@end
