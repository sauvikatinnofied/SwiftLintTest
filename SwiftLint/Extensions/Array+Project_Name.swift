//
//  Array+Project_Name.swift
//  SwiftLint
//
//  Created by Sauvik Dolui on 20/12/18.
//  Copyright © 2018 Sauvik Dolui. All rights reserved.
//

import Foundation


/// A dummy protocol for generating array extensions only on Integers
protocol _IntType {
    var intValue: Int { get }
}

// MARK: - Implementation of the _IntType
extension Int: _IntType {
    var intValue: Int { return self } // Returning self value as the intValue
}

extension Array where Element: _IntType {
    /// A computed property on int array
    var indexPathsInSection0: [IndexPath] {
        return self.map { return IndexPath(row: $0.intValue, section: 0) }
    }
}

// MARK: - Array insertion with existing element reference
extension Array where Element: Equatable {
    @discardableResult public mutating func insert(_ newElement: Element, after element: Element) -> Bool {
        guard let refIndex = index(of: element) else {
            return false
        }
        insert(newElement, at: refIndex + 1)
        return true
    }
    @discardableResult public mutating func insert(_ newElement: Element, before element: Element) -> Bool {
        guard let refIndex = index(of: element) else {
            return false
        }
        insert(newElement, at: Swift.max(0, refIndex))
        return true
    }
}

// MARK: - Finding out index
extension Array where Element: Equatable {
    func lastIndex(of element: Element) -> Int? {
        for (index, selfElement) in self.reversed().enumerated() {
            if selfElement == element { return count - index - 1 }
        }
        return nil
    }
}
    
extension Array where Element: Hashable {
    // MARK: Unique Elements
    var uniqueUnOrderedElements: [Element] {
        return Array(Set(self))
    }
    var uniqueOrderedElements: [Element] {
        var uniqueElements = [Element]()
        for element in self where !uniqueElements.contains(element) {
            uniqueElements.append(element)
        }
        return uniqueElements
    }
}
