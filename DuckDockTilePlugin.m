//
//  DuckDockTilePlugin.m
//  DuckDockTilePlugin
//
//  Created by Csaba Fitzl on 28/09/2023.
//

#import <Foundation/Foundation.h>

#include "DuckDockTilePlugIn.h"

@implementation DuckDockTilePlugIn

@synthesize observer;

static void doSomething(void) {
    system("echo 1 >> /tmp/docktileplugincalled.txt");
    NSLog(@"%@", @"BEYOND doSomething was called");
}

- (void)setDockTile:(NSDockTile *)dockTile {
        observer = [[NSDistributedNotificationCenter defaultCenter] addObserverForName:@"com.apple.screenIsLocked" object:nil queue:nil usingBlock:^(NSNotification *notification) {
            doSomething();
        }];
    NSLog(@"%@", @"BEYOND setDockTile was called");
}

- (NSMenu *)dockMenu {
    
    if (dockMenu == nil)
        dockMenu = [[NSMenu alloc] init];
    else
        [dockMenu removeAllItems];
    NSLog(@"%@", @"BEYOND dockMenu was called");
    return dockMenu;
}

@end
