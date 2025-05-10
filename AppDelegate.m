#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // 1. Create the window's frame (position and size)
    // (x: from left, y: from bottom, width, height)
    NSRect contentRect = NSMakeRect(200, 200, 500, 400);

    // 2. Define the window style
    NSWindowStyleMask styleMask = NSWindowStyleMaskTitled |
                                  NSWindowStyleMaskClosable |
                                  NSWindowStyleMaskMiniaturizable |
                                  NSWindowStyleMaskResizable;

    // 3. Create the NSWindow instance
    self.window = [[NSWindow alloc] initWithContentRect:contentRect
                                              styleMask:styleMask
                                                backing:NSBackingStoreBuffered // Use a buffered window
                                                  defer:NO]; // Create the window device immediately

    // 4. Set window properties
    self.window.title = @"empty";
    [self.window center]; // Center the window on the screen

    // 5. Create a simple content view for the window
    // You'll typically want to replace this with your app's actual content,
    // possibly managed by a NSViewController.
    NSView *contentView = [[NSView alloc] initWithFrame:contentRect];
    // To make the contentView visible, you can give it a color (optional)
    // contentView.wantsLayer = YES;
    // contentView.layer.backgroundColor = [NSColor lightGrayColor].CGColor;
    self.window.contentView = contentView;

    // Alternatively, if you have a NSViewController:
    // NSViewController *mainViewController = [[NSViewController alloc] init];
    // mainViewController.view = [[NSView alloc] initWithFrame:NSMakeRect(0, 0, contentRect.size.width, contentRect.size.height)];
    // // Setup your mainViewController.view here
    // self.window.contentViewController = mainViewController;


    // 6. Make the window key and order it to the front so it's visible and active
    [self.window makeKeyAndOrderFront:nil];

    // 7. Ensure the application is activated (brings it to the foreground)
    [NSApp activateIgnoringOtherApps:YES];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
    NSLog(@"Application will terminate.");
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
    return YES;
}

@end
