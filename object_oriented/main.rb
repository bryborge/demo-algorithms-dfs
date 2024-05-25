# frozen_string_literal: true

require_relative './lib/graph.rb'

graph = Graph.new
graph.add_edge('A', 'B')
graph.add_edge('A', 'C')
graph.add_edge('B', 'D')
graph.add_edge('B', 'E')
graph.add_edge('C', 'F')
graph.add_edge('C', 'G')
graph.add_edge('E', 'H')

start = 'A'

# Graph Adjacency List
# graph.print_graph

puts "DFS Traversal starting from node #{start} (iterative):"
graph.dfs_iterative(start)

puts "DFS Traversal starting from node #{start} (recursive):"
graph.dfs_recursive(start)
