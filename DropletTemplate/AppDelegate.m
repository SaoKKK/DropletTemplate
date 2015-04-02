//
//  AppDelegate.m
//  DropletTemplate
//
//  Created by 河野 さおり on 2015/04/02.
//  Copyright (c) 2015年 Saori Kohno. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate {
    BOOL bWC;
}
- (id)init{
    self = [super init];
    if (self){
        bWC = YES;
    }
    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    if (bWC) {
        [NSApp terminate:self];
    }
}

#pragma mark - open file

//ドックアイコンへのドラッグアンドドロップ時
- (BOOL)application:(NSApplication *)sender openFile:(NSString *)filename{
    return YES;
}

- (void) application:(NSApplication *)sender openFiles:(NSArray *)filenames{
    bWC = NO;
    //ドロップ時の処理
    [NSApp terminate:self];
}
@end
