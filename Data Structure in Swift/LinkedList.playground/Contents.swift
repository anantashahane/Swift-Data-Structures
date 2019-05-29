import Foundation

class Node {
    private let value : Int
    private var next : Node?
    
    init(value : Int) {
        self.value = value
        self.next = nil
    }
    
    deinit {
        print("Deleting Node with value : \(value)")
    }
    
    func GetValue() -> Int {
        return value
    }
    
    func SetNext(with Node : Node?) {
        self.next = Node
    }
    
    func GetNext() -> Node? {
        return next
    }
}

class LinkedList {
    var head : Node?
    
    init() {
        head = nil
    }
    
    func Insert(NodeWithValue val : Int) -> Bool {
        if let headUnraveled = head {
            if headUnraveled.GetValue() > val {
                head = Node.init(value: val)
                head?.SetNext(with: headUnraveled)
                return true
            }
            var temp : Node? = headUnraveled
            var postTemp : Node? = headUnraveled
            while temp != nil {
                if temp!.GetValue() == val {
                    return false
                } else if temp!.GetValue() < val {
                    postTemp = temp
                    temp = temp?.GetNext()
                } else {
                    break
                }
            }
            postTemp?.SetNext(with: Node.init(value: val))
            postTemp!.GetNext()?.SetNext(with: temp)
            return true
        } else {
            head = Node.init(value: val)
            return true
        }
    }
    
    func DisplayList() {
        if let _ = head {
            var temp = head
            while temp != nil {
                print(temp!.GetValue(), separator: "", terminator: "->")
                temp = temp!.GetNext()
            }
            print("LL ends here")
        } else {
            print("LL is empty")
        }
    }
    
    func Delete(nodeWith Val : Int) -> Bool {
        if let headUnravel = head {
            if headUnravel.GetValue() == Val {
                head = headUnravel.GetNext()
                headUnravel.SetNext(with: nil)
                return true
            }
            var temp = head
            var PostTemp = head
            while temp != nil {
                if temp!.GetValue() < Val {
                    PostTemp = temp
                    temp = temp!.GetNext()
                } else if temp!.GetValue() > Val {
                    return false
                } else {
                    PostTemp?.SetNext(with: temp!.GetNext())
                    temp?.SetNext(with: nil)
                    return true
                }
            }
        }
        return false
    }
    
    func Search(forValue Val : Int) -> Bool {
        if let _ = head {
            var tempah = head
            while tempah != nil {
                if tempah!.GetValue() == Val {
                    return true
                }
                tempah = tempah!.GetNext()
            }
        }
        return false
    }
    
    func Update(Value source : Int, toValue destination : Int) -> Bool {
        if Search(forValue: source) && !Search(forValue: destination) {
            Delete(nodeWith: source)
            Insert(NodeWithValue: destination)
            return true
        }
        return false
    }
}

var ll = LinkedList()
for i in 1...200 {
    ll.Insert(NodeWithValue: i)
}

ll.Search(forValue: 299)
ll.Search(forValue: 199)
ll.DisplayList()

for i in 100...150 {
    ll.Delete(nodeWith: i)
}

ll.Update(Value: 99, toValue: 125)
ll.DisplayList()
