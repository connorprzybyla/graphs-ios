//
//  Node.swift
//  graph-ios
//
//  Created by Connor Przybyla on 7/19/22.
//

import Foundation

struct Node: Hashable {
    var value: Int
    var neighbors: [Node]
}
