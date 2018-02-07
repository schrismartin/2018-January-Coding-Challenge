//
//  Protocol.swift
//  LinkedListCodingChallenge
//
//  Created by Patrick Goley on 1/30/18.
//  Copyright © 2018 nashcocoaheads. All rights reserved.
//

public struct LinkedList<Element>: LinkedListType {
    
    public typealias Iterator = LinkedListIterator<Element>
    public var head: Node<Element>?
}

public struct LinkedListIterator<ElementType>: LinkedListIteratorProtocol {
    
    public typealias Element = ElementType
    public var currentNode: Node<Element>?
}
