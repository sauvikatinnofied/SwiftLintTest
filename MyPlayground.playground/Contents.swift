import UIKit

protocol Container {
    associatedtype Item
    
    var count: Int { get }
    mutating func append(_ item: Item)
    subscript(i: Int) -> Item { get }
}
struct MyArray: Container {
    typealias Item = Int
    
    
    var items: [Item]
    
    var count: Int { return items.count }
    mutating func append(_ item: Item) {
        items.append(item)
    }
    subscript(i: Int) -> Item { return items[i] }
}

struct MyGenericArray<Element>: Container {
    
    
    var items: [Element]
    
    var count: Int { return items.count }
    mutating func append(_ item: Element) {
        items.append(item)
    }
    subscript(i: Int) -> Element { return items[i] }
}
