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
        guard let last = items.last else { fatalError("Stack is empty.") }
        return last
    }
  
    mutating func push(_ element: T) {
        items.append(element)
    }
}
