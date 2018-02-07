//
//  Node.swift
//  LinkedListCodingChallenge
//
//  Created by Chris Martin on 2/5/18.
//  Copyright © 2018 nashcocoaheads. All rights reserved.
//

import Foundation

public final class Node<Element>: NodeType {
    
    public var element: Element
    public var next: Node<Element>?
    
    public init(element: Element) {
        
        self.element = element
    }
}
