//
//  LinkedListIteratorProtocol.swift
//  LinkedListCodingChallenge
//
//  Created by Chris Martin on 2/6/18.
//  Copyright © 2018 nashcocoaheads. All rights reserved.
//

import Foundation

protocol LinkedListIteratorProtocol: IteratorProtocol where Self.Element == Node.Element {
    
    associatedtype Node: NodeType
    
    var currentNode: Node? { get set }
    
    init(currentNode: Node?)
}

// MARK: - IteratorProtocol Conformance
extension LinkedListIteratorProtocol {
    
    public mutating func next() -> Element? {
        
        defer { currentNode = currentNode?.next }
        
        return currentNode?.element
    }
}
