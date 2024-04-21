# LinkedList Implementation in Ruby


This is a simple implementation of a singly linked list in Ruby. It provides basic operations to manipulate the list such as appending, prepending, accessing elements by index, and more.


#### Methods

- `append(value)`: Appends a new node with the given `value` to the end of the list.
- `prepend(value)`: Prepends a new node with the given `value` to the beginning of the list.
- `each`: Iterates through each node in the list and yields it.
- `each_with_index`: Iterates through each node in the list and yields it along with its index.
- `at(index)`: Returns the node at the specified `index`.
- `pop`: Removes the last node from the list.
- `contains?(value)`: Checks if the list contains a node with the given `value`.
- `find(value)`: Returns the index of the first node with the given `value`.
- `to_s`: Converts the list to a string representation.
- `insert_at(value, index)`: Inserts a new node with the given `value` at the specified `index`.
- `remove_at(index)`: Removes the node at the specified `index`.

## Usage

Here's an example of how to use the LinkedList class:

```ruby
# Create a new linked list
list = LinkedList.new

# Append some values
list.append(1)
list.append(2)
list.append(3)

# Prepend a value
list.prepend(0)

# Print the list
list.to_s  # Output: (0) -> (1) -> (2) -> (3)

# Access a node by index
node = list.at(2)  # node.value => 2

# Insert a value at a specific index
list.insert_at(10, 2)
list.to_s  # Output: (0) -> (1) -> (10) -> (2) -> (3)

# Remove a node at a specific index
list.remove_at(2)
list.to_s  # Output: (0) -> (1) -> (2) -> (3)
```
