//
//  LinkedListType.swift
//  LinkedListCodingChallenge
//
//  Created by Chris Martin on 2/6/18.
//  Copyright © 2018 nashcocoaheads. All rights reserved.
//

import Foundation

public protocol LinkedListType: Sequence where Iterator: LinkedListIteratorProtocol, Iterator.Node == Node {
    
    // TODO: Line 16 gets warning: Redundant conformance constraint 'Self.Node': 'NodeType' – How could this be rewritten to get rid of this warning?
    
    /// A type implementing NodeType whose Element is the same as the LinkListType.Element
    associatedtype Node: NodeType
    
    /// The first node in the sequence
    var head: Node? { get set }
    
    /// Adds an element to the front of the sequence
    mutating func prepend(_ element: Element)
    
    /// Adds an element to the end of the sequence
    mutating func append(_ element: Element)
}

// MARK: - LinkedListType Conformance
extension LinkedListType {
    
    /// The last node in the sequence
    var lastNode: Node? {
        
        var node = head
        while let next = node?.next {
            node = next
        }
        
        return node
    }
    
    public mutating func prepend(_ element: Self.Element) {
        
        let node = Node(element: element, before: head)
        head = node
    }
    
    public mutating func append(_ element: Self.Element) {
        
        let node = Node(element: element, after: lastNode)
        
        if lastNode == nil {
            head = node
        }
    }
}

// MARK: - Collection Conformance
extension LinkedListType {
    
    /// Returns a value less than or equal to the number of elements in
    /// the sequence, nondestructively.
    ///
    /// - Complexity: O(*n*)
    public var underestimatedCount: Int {
        
        guard var currentNode = head else { return 0 }
        var count = 1
        
        while let nextNode = currentNode.next {
            
            currentNode = nextNode
            count += 1
        }
        
        return count
    }

    public func makeIterator() -> Iterator {

        return Iterator.init(currentNode: head)
    }
}

