//
//  DuckDockTilePlugin.h
//  DuckDockTilePlugin
//
//  Created by Csaba Fitzl on 28/09/2023.
//

#ifndef DuckDockTilePlugin_h
#define DuckDockTilePlugin_h


#endif /* DuckDockTilePlugin_h */

#include <Cocoa/Cocoa.h>

@interface DuckDockTilePlugIn : NSObject <NSDockTilePlugIn> {
    NSMenu *dockMenu;
}

@property(retain) id observer;

@end
