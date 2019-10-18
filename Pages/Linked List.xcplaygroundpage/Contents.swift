// Linked List

class Node {
    var value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
}

class LinkedList {
    var head: Node?
    
    init(head: Node?) {
        self.head = head
    }
    
    func append(_ node: Node) {
        guard head != nil else {
            head = head
            return
        }
        
        var current = head
        while let _ = current?.next {
            current = current?.next
        }
        current?.next = node
    }
    
    fun getNode(atPosition position: Int) -> Node? {
        guard position > 0 else {
           return nil
        }
    
        var counter = 1
        var current = head
    
        while current != nil && counter <= position {
            if counter == position {
                return current
            }
            current = current?.next
            counter += 1
        }
        return nil
    }
    
    func insertNode(_ node: Node, at position: Int) {
        guard position > 0 else {
            return
        }
        
        current = head
        counter = 1
        
        if position == 1 {
            node.next = head
            head = node
        } else if position > 1 {
            while current != nil && counter < position {
                if counter == position - 1 {
                    node.next = current?.next
                    current?.next = node
                }
            }
            current = current?.next
            counter += 1
        }
    }
    
    func deleteNode(withValue value: Int) {
        var current = head
        var previous: Node?
        
        while current?.value != value && current?.next != nil {
            previous = current
            current = current?.next
        }
        
        if current?.value == value {
            if previous != nil {
                previous.next = current?.next
            } else {
                head = current?.next
            }
        }
    }
}
