//
//  Stack.swift
//  graph-ios
//
//  Created by Connor Przybyla on 7/19/22.
//

import Foundation

struct Stack<T> {
    private var items: [T] = []
    
    func peek() -> T {
        guard let topElement = items.first else {
            fatalError("Stack is empty.")
        }
        return topElement
    }
    
    func size() -> Int {
        return items.count
    }
    
    mutating func pop() -> T {
        return items.removeFirst()
    }
  
    mutating func push(_ element: T) {
        items.insert(element, at: 0)
    }
}
