//
//  NodeType.swift
//  LinkedListCodingChallenge
//
//  Created by Chris Martin on 2/6/18.
//  Copyright © 2018 nashcocoaheads. All rights reserved.
//

import Foundation

public protocol NodeType: class {
    
    /// The type of value being stored
    associatedtype Element
    
    /// The value being stored by the node
    var element: Element { get }
    
    /// A reference to the proceeding node in the list
    var next: Self? { get set }
    
    /// Create a node with an element
    ///
    /// - Parameter element: Element contained within the node
    init(element: Element)
}

extension NodeType {
    
    public init(element: Element, before nextNode: Self?) {
        
        self.init(element: element)
        next = nextNode
    }
    
    public init(element: Element, after previousNode: Self?) {
        
        self.init(element: element)
        previousNode?.next = self
    }
}
