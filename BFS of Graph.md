## 01. BFS of Graph

The problem can be found at the following link: [Question Link](https://www.geeksforgeeks.org/problems/bfs-traversal-of-graph/1)

### Problem Description

**Task:** Given a connected undirected graph containing V vertices, represented by a 2-d adjacency list adj[][], where each adj[i] represents the list of vertices connected to vertex i.Perform a Breadth First Search (BFS) traversal starting from vertex 0, visiting vertices from left to right according to the given adjacency list, and return a list containing the BFS traversal of the graph.Note: Do traverse in the same order as they are in the given adjacency list.Examples:Input: adj[][] = [[2, 3, 1], [0], [0, 4], [0], [2]]Output: [0, 2, 3, 1, 4]Explanation: Starting from 0, the BFS traversal will follow these steps: Visit 0 → Output: 0 Visit 2 (first neighbor of 0) → Output: 0, 2 Visit 3 (next neighbor of 0) → Output: 0, 2, 3 Visit 1 (next neighbor of 0) → Output: 0, 2, 3, 1Visit 4 (neighbor of 2) → Final Output: 0, 2, 3, 1, 4Input: adj[][] = [[1, 2], [0, 2], [0, 1, 3, 4], [2], [2]]Output: [0, 1, 2, 3, 4]Explanation: Starting from 0, the BFS traversal proceeds as follows: Visit 0 → Output: 0 Visit 1 (the first neighbor of 0) → Output: 0, 1 Visit 2 (the next neighbor of 0) → Output: 0, 1, 2 Visit 3 (the first neighbor of 2 that hasn't been visited yet) → Output: 0, 1, 2, 3 Visit 4 (the next neighbor of 2) → Final Output: 0, 1, 2, 3, 4

### Time and Auxiliary Space Complexity

- **Expected Time Complexity:** O(V + E)
- **Expected Auxiliary Space Complexity:** O(V + E)

### Accepted Solutions (2)

#### Solution 1 (Java)

- **Submitted:** 2026-11-22 17:21:57
- **Status:** Correct
- **Marks:** 0

```java
class Solution {
    public ArrayList<Integer> bfs(ArrayList<ArrayList<Integer>> adj) {
        // for BFS --> [[2,3,1], [0], [0, 4], [0], [2]]
        // indexing --> 0,       1,    2,     3,    4
        // bfs --->     0-->(2 -->4),3,1
        /*
        0
    2   3   1
    4
        */
        // structure --> level wise traverse 
        // 0 2 3 1 4
        // here first node 0 add up then it's neighbours then 
        // we retrieve from first node itsel
        // that means first in first out jaisa structure
        ArrayList<Integer> ans = new ArrayList<>();
        Queue<Integer> q = new LinkedList<>();
        // ek array lenge jisme hum visited store kr rhe honge 
        boolean[] visited = new boolean[adj.size()]; 
        // visited = [false, false, false, false, false]
        q.offer(0);
        visited[0] = true;

        // iska means queue m element aa gye 
        while(!q.isEmpty()){
            int node = q.poll();
            // humne sbse pehle element nikal liya ab 
            ans.add(node); // 0, 2 , 3, 1, 4
            for(int neighbour : adj.get(node)){
                // 2, 3, 1
                if(!visited[neighbour]){
                    // means vo neighbour mark nhi h 
                    visited[neighbour] = true;
                    q.add(neighbour); // 3,1,4
                }
            }
        }
        return ans;
    }
}
```

#### Solution 2 (Java)

- **Submitted:** 2026-11-22 17:09:55
- **Status:** Correct
- **Marks:** 2

```java
class Solution {
    public ArrayList<Integer> bfs(ArrayList<ArrayList<Integer>> adj) {
        // for BFS --> [[2,3,1], [0], [0, 4], [0], [2]]
        // indexing --> 0,       1,    2,     3,    4
        // bfs --->     0-->(2 -->4),3,1
        /*
        0
    2   3   1
    4
        */
        // structure --> level wise traverse 
        // 0 2 3 1 4
        // here first node 0 add up then it's neighbours then 
        // we retrieve from first node itsel
        // that means first in first out jaisa structure
        ArrayList<Integer> ans = new ArrayList<>();
        Queue<Integer> q = new LinkedList<>();
        // ek array lenge jisme hum visited store kr rhe honge 
        boolean[] visited = new boolean[adj.size()]; 
        // visited = [false, false, false, false, false]
        q.offer(0);
        visited[0] = true;

        // iska means queue m element aa gye 
        while(!q.isEmpty()){
            int node = q.poll();
            // humne sbse pehle element nikal liya ab 
            ans.add(node); // 0, 2 , 3, 1, 4
            for(int neighbour : adj.get(node)){
                // 2, 3, 1
                if(!visited[neighbour]){
                    // means vo neighbour mark nhi h 
                    visited[neighbour] = true;
                    q.add(neighbour); // 3,1,4
                }
            }
        }
        return ans;
    }
}
```

*Generated on: 11/22/2026, 5:22:11 PM*