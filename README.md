#Swift Data Structures
***
##Linked List
```LinkedList.playground``` is a playground file which can be opened by Xcode 10.2.1.  
For linux, type this into terminal
```cd LinkedList.playground/ ; swift Contents.swift```
###Class Diagram
___
|Node 			 							|
|-----			 							|
|- value : Int						 	|
|- next : Node?							|
|+ init(value : Int) -> Void			|
|+ deinit() -> Void						|
|+ GetValue() -> Int					|
|+ SetNext(with Node : Node?)			|
|+ GetNext() -> Node?					|

|Linked List								|
|:----------------------------------|
|+ head : Node?							|
|+ Insert(NodeWithValue val : Int) -> Bool|
|+ DisplayList() -> Void				|
|+ Delete(nodeWith Val : Int) -> Bool|
|+ Search(forValue Val : Int) -> Bool|
|+ Update(Value source : Int, toValue destination : Int) -> Bool|

###Features of this LinkedList
___
* Singly Linked List.
* Each node in the Linked List is a node with unique data point.
* The data in the nodes when traversing the linked list are always in ascending order.
___