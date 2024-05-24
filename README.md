# Depth-First Search (Demo)

A demonstration of the depth-first search algorithm. The demo covers an iterative and a recursive implementation, both
in the Ruby language.

## Definition

**Depth-First Search (DFS)** is an algorithm used to traverse or search through a graph or tree data structure. The
algorithm starts at a selected node and explores as far as possible along each branch before backtracking.

To illustrate at a high-level, **DFS** works like a person exploring a maze by following a path until reaching a dead
end, then backtracking to the last choice point and trying a different path.
This process continues until all paths have been explored.

## Use-cases

DFS is useful in software development for various reasons:

1.  **Graph Traversal**

    DFS can be used to visit all nodes in a graph, making it useful for tasks like finding connected components or paths
    between nodes.

2.  **Pathfinding**
  
    It can be used to find a path between two nodes in a graph, such as finding the shortest path in a maze or a
    network.

3.  **Topological Sorting**

    DFS can be used to perform a topological sort on a directed acyclic graph, which is useful in task scheduling and
    dependency resolution.

4.  **Cycle Detection**

    In graph theory, DFS can be used to detect cycles in a graph, which is important in various applications to prevent
    infinite loops or dependencies.

5.  **Maze Solving**

    In gaming and robotics, DFS can be used to navigate mazes or solve puzzles by exploring possible paths.

6.  **Tree Traversal**

    DFS is used to traverse trees, such as binary trees or N-ary trees, in various algorithms and data structures.

## Limitations

1.  **Finding Shortest Paths**

    DFS does not guarantee finding the shortest path in weighted graphs. For this purpose, algorithms like Dijkstra's or
    Breadth-First Search (BFS) are more suitable.

2.  **Memory Consumption**

    DFS can use a lot of memory when traversing deep or infinite graphs, as it explores as far as possible along each
    branch. In such cases, iterative deepening depth-first search (IDDFS) or other algorithms may be more appropriate.

3.  **Cyclic Graphs**

    DFS can get stuck in an infinite loop if used on graphs with cycles without proper cycle detection. In such cases,
    algorithms that handle cycles more gracefully, like topological sort or cycle detection algorithms, should be used.

4.  **Finding All Paths**

    DFS may not be the best choice if you need to find all paths between two nodes in a graph, especially in the
    presence of cycles. In such cases, algorithms that maintain a list of visited nodes or paths, such as BFS or
    backtracking, may be more suitable.

5.  **Performance in Dense Graphs**

    In dense graphs (graphs with many edges), DFS may take longer to complete compared to other algorithms like BFS,
    which explore all neighbors at each level before moving deeper.

6.  **Space Complexity**

    While DFS has a time complexity of O(V + E) (where V is the number of vertices and E is the number of edges), its
    space complexity can be high in certain cases, especially in recursive implementations where the call stack can grow
    significantly.
