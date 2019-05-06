# Persistent Vector Trie
Is an implementation of an abstract data type called `list`. At a high level vector tries are similar to tries, in that they storea sequence of keys (bit mapped indexes in our case), but the main difference is that their values are stored within leaf nodes, whereas normal tries will store the values as a sequence along the keys.

## Properties
* **size** - represents the number of valid elements in the tree.
* **root** - a reference to the root node of the tree.
* **branchSize** - represents the collection size of each node.

## Nodes
There are three types of nodes, `root node`, `internal node`, and `leaf nodes`.

### Root Node
Will the most top level node in the tree. It is also the node that the vector trie will reference as `root`. A root node has references (up to the `branchSize`) that'll point to internal node of the tree.

### Internal Node
Similarly to a root node, an internal node will contain references to either another internal node or a leaf node. The only difference is that a root node is the most top level node, and also the one the vector will reference as `root`.

### Leaf Node
Unlike a root or internal node, leaf nodes do not store references in their collection, instead they store values.
