//
//  TopologicalSort.swift
//  graph-ios
//
//  Created by Connor Przybyla on 7/19/22.
//

import Foundation

struct Edge {
    var from: Int
    var to: Int
    var weight: Int
}

class TopologicalSort {
    
    static func topSort(_ adjList: [Int: [Edge]],
                        _ amountOfVertices: Int) -> [Int] {
        var ordering = Array(repeating: 0, count: amountOfVertices)
        var visited = Array(repeating: false, count: amountOfVertices)
        
        var i = amountOfVertices - 1
        for at in 0..<amountOfVertices {
            if !visited[at] {
                i = dfs(&i, at, &visited, &ordering, adjList)
            }
        }
        
        return ordering
    }
    
    private static func dfs(_ i: inout Int,
                            _ at: Int,
                            _ visited: inout [Bool],
                            _ ordering: inout [Int],
                            _ adjList: [Int: [Edge]]) -> Int {
        visited[at] = true
        
        let edges: [Edge] = adjList[at] ?? []
        for edge in edges {
            if !visited[edge.to] {
                i = dfs(&i, at, &visited, &ordering, adjList)
            }
        }
    
        ordering[i] = at
        return i - 1
    }
}
