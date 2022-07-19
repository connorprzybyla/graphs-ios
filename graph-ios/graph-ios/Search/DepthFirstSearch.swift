//
//  DepthFirstSearch.swift
//  graph-ios
//
//  Created by Connor Przybyla on 7/19/22.
//

import Foundation

struct DepthFirstSearch {
    
    // MARK: - Iterative
    
    static func dfs(_ Node: Node) {
        var visited = Set<Node>()
        var stack = Stack<Node>()
        stack.push(Node)
        
        while stack.size() > 0 {
            let currentVertex = stack.pop()
            print("Vertex \(currentVertex.value) visited.")
            
            if !visited.contains(currentVertex) {
                visited.insert(currentVertex)
            }
            
            for neighbor in currentVertex.neighbors {
                if !visited.contains(neighbor) {
                    stack.push(neighbor)
                }
            }
        }
    }
    
    // MARK: - Recursive
    
    static func recursiveDfs(_ Node: Node) {
        var visited = Set<Node>()
        visited.insert(Node)
        dfsHelper(Node, &visited)
    }
    
    private static func dfsHelper(_ Node: Node,
                                  _ visited: inout Set<Node>) {
        visited.insert(Node)
        for neighbor in Node.neighbors {
            if !visited.contains(Node) {
                dfsHelper(neighbor, &visited)
            }
        }
    }
}
