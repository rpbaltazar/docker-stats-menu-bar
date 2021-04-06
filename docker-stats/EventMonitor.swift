//
//  EventMonitor.swift
//  docker-stats
//
//  Created by Perx on 6/4/21.
//

import Cocoa

// What this class does is that it monitors for global events, events that are outside the scope of your application such as the mouse click,
// or a gesture. For our case, we are going to monitor the left and right-click mouse events

class EventMonitor {
    private var monitor: Any?
    private let mask: NSEvent.EventTypeMask
    private let handler: (NSEvent?) -> Void
    
    public init(mask: NSEvent.EventTypeMask, handler: @escaping (NSEvent?) -> Void) {
        self.mask = mask
        self.handler = handler
    }
    
    deinit {
        stop()
    }
    
    public func start() {
        monitor = NSEvent.addGlobalMonitorForEvents(matching: mask, handler: handler) as! NSObject
    }
    
    public func stop() {
        if monitor != nil {
            NSEvent.removeMonitor(monitor!)
            monitor = nil
        }
    }
}
