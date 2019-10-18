class Stack {
    var linkedList: LinkedList
    
    init(top: Node?) {
        self.linkedList = LinkedList(head: top)
    }
    
    func push(_ node: Node) {
        linkedList.insertNode(node, at: 1)
    }
    
    func pop() -> Node? {
        let deletedNode = linkedList.getNode(atPosition: 1)
        if let value = deletedNode?.value {
            linkedList.deleteNode(withValue: value)
        }
        return deletedNode
    }
}

class Node {
    var head: Node?
    
    init(head: Node?) {
        self.head = head
    }
    
    func append(_ node: Node) {
        guard head != nil else {
            head = node
            return
        }
        
        var current = head
        while let _ = current?.next {
            current = current?.next
        }
        current?.next = node
    }
    
    func insertNode(_ node: Node, at position: Int) {
        guard position > 0 {
            return
        }
        
        var counter = 1
        var current = head
        
        if position == 1 {
            node.next = head
            head = node
        } else if position > 1 {
            while current != nil && counter < position {
                if counter = position - 1 {
                    node.next = current?.next
                    current?.next = node
                }
                current = current?.next
                counter += 1
            }
        }
    }
    
    func getNode(atPosition position: Int) -> Node? {
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
    
    func deleteNode(withValue value: Int) {
        var current = head
        var previous: Node?
        
        while current?.value != value && current?.next != nil {
            previous = current
            current = current?.next
        }
        
        if current?.value == value {
            if previous != nil {
                previous?.next = current?.next
            } else {
                head = current?.next
            }
        }
    }
}
