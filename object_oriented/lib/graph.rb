# frozen_string_literal: true

require 'set'

class Graph
  def initialize
    @adjacency_list = {}
  end

  # Adds an edge to the graph.
  def add_edge(source, destination)
    @adjacency_list[source] ||= []
    @adjacency_list[source] << destination
  end

  # Iterative DFS implementation.
  def dfs_iterative(start)
    visited = Set.new
    stack = [start]

    until stack.empty?
      node = stack.pop
      next if visited.include?(node)

      puts node  # Process the node (e.g., print it)
      visited.add(node)

      @adjacency_list[node]&.reverse_each do |neighbor|
        stack.push(neighbor) unless visited.include?(neighbor)
      end
    end
  end

  # Recursive DFS implementation.
  def dfs_recursive(node, visited = Set.new)
    return if visited.include?(node)

    puts node  # Process the node (e.g., print it)
    visited.add(node)

    @adjacency_list[node]&.each do |neighbor|
      dfs_recursive(neighbor, visited)
    end
  end

  # Method to print the graph's adjacency list (for debugging)
  def print_graph
    @adjacency_list.each do |node, neighbors|
      puts "#{node}: #{neighbors.join(', ')}"
    end
  end
end
