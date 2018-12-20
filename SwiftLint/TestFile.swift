//
//  TestFile.swift
//  SwiftLint
//
//  Created by Sauvik Dolui on 22/07/17.
//  Copyright © 2017 Sauvik Dolui. All rights reserved.
//

import Foundation


struct Student: Equatable {
    let name: String
    let ninja: String = "Ninja"
    let rollNumber: Int
}

extension Student: CustomDebugStringConvertible {
    var debugDescription: String {
        return "\(type(of: self)): {name: \(name), rollNumber: \(rollNumber)}"
    }
}

extension Student: CustomStringConvertible {
    var description: String {
        return "\(type(of: self)): {name: \(name), rollNumber: \(rollNumber)}"
    }
}
func == (lhs: Student, rhs: Student) -> Bool { return lhs.name == rhs.name &&
    lhs.rollNumber == rhs.rollNumber }

