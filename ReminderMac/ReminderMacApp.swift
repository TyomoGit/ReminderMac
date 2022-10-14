//
//  ReminderMacApp.swift
//  ReminderMac
//
//  Created by Tyomo on 2022/10/12.
//

import SwiftUI

@main
struct ReminderMacApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onReceive(NotificationCenter.default.publisher(for: NSApplication.willUpdateNotification), perform: { _ in
                    for window in NSApplication.shared.windows {
                        window.standardWindowButton(.zoomButton)?.isEnabled = false
                    }
                })
                .onAppear {
                    UserDefaults.standard.set(true, forKey: "NSFullScreenMenuItemEverywhere")
                    DispatchQueue.main.async {
                                            NSApplication.shared.windows.forEach { window in
                                                window.styleMask = [.titled, .closable, .miniaturizable]
                                            }
                                        }
                }
        }
        .commands {
            CommandGroup(replacing: CommandGroupPlacement.appVisibility, addition: {})
        }
    }
    
    init() {
        NSWindow.allowsAutomaticWindowTabbing = false
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        UserDefaults.standard.set(true, forKey: "NSFullScreenMenuItemEverywhere")
    }


    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
            return true
    }
}
