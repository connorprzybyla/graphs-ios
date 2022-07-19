//
//  BreadthFirstSearch.swift
//  graph-ios
//
//  Created by Connor Przybyla on 7/19/22.
//

import Foundation

struct BreadthFirstSearch {
    
    static func bfs(_ Node: Node) {
        var visited = Set<Node>()
        var queue = Queue<Node>()
        queue.enqueue(Node)
        
        while queue.size() > 0 {
            let currentVertex = queue.dequeue()
            print("Vertex \(currentVertex.value) visited.")
            
            if !visited.contains(currentVertex) {
                visited.insert(currentVertex)
            }
            
            for neighbor in currentVertex.neighbors {
                if !visited.contains(neighbor) {
                    queue.enqueue(neighbor)
                }
            }
        }
    }
}
