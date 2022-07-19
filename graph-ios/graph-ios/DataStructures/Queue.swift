//
//  Queue.swift
//  graph-ios
//
//  Created by Connor Przybyla on 7/19/22.
//

import Foundation

struct Queue<T> {
    private var items: [T] = []
    
    func peek() -> T {
        guard let topElement = items.first else {
            fatalError("Queue is empty.")
        }
        return topElement
    }
    
    func size() -> Int {
        return items.count
    }
    
    mutating func dequeue() -> T {
        return items.removeFirst()
    }
    
    mutating func enqueue(_ element: T) {
        items.append(element)
    }
}
