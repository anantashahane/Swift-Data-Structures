# Swift Data Structures

## Linked List
```LinkedList.playground``` is a playground file which can be opened by Xcode 10.2.1.  
For linux, type this into terminal
```cd LinkedList.playground/ ; swift Contents.swift```
### Class Diagram

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

### Features of this LinkedList

* Singly Linked List.
* Each node in the Linked List is a node with unique data point.
* The data in the nodes when traversing the linked list are always in ascending order.


## Avengers Call

Q. Write a code, that would return the name of the super hero corrosponding to the T9 code? eg 0 4855 -> Hulk.

A. Easy and boring way: Create a dictionary od [String : String], with T9 as the key, and name as the value. Refer AvengersDictionary

Interesting Way : Create a tree which will always be 8 or less node wide, and will be as tall as the longest name. Use huristic to save and retrive the Hero node.

![DataStructure](https://github.com/Ananta11/Swift-Data-Structures/raw/master/Common/Tree.png)