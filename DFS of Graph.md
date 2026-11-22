## 01. DFS of Graph

The problem can be found at the following link: [Question Link](https://www.geeksforgeeks.org/problems/depth-first-traversal-for-a-graph/1)

### Problem Description

**Task:** Given a connected undirected graph containing V vertices represented by a 2-d adjacency list adj[][], where each adj[i] represents the list of vertices connected to vertex i. Perform a Depth First Search (DFS) traversal starting from vertex 0, visiting vertices from left to right as per the given adjacency list, and return a list containing the DFS traversal of the graph.Note: Do traverse in the same order as they are in the given adjacency list.Examples:Input: adj[][] = [[2, 3, 1], [0], [0, 4], [0], [2]]Output: [0, 2, 4, 3, 1]Explanation: Starting from 0, the DFS traversal proceeds as follows:Visit 0 → Output: 0 Visit 2 (the first neighbor of 0) → Output: 0, 2 Visit 4 (the first neighbor of 2) → Output: 0, 2, 4 Backtrack to 2, then backtrack to 0, and visit 3 → Output: 0, 2, 4, 3 Finally, backtrack to 0 and visit 1 → Final Output: 0, 2, 4, 3, 1Input: adj[][] = [[1, 2], [0, 2], [0, 1, 3, 4], [2], [2]]

#### Examples

##### Example 1

- **Output:**
```text
[0, 1, 2, 3, 4]
```
- **Explanation:** Starting from 0, the DFS traversal proceeds as follows: Visit 0 → Output: 0 Visit 1 (the first neighbor of 0) → Output: 0, 1 Visit 2 (the first neighbor of 1) → Output: 0, 1, 2 Visit 3 (the first neighbor of 2) → Output: 0, 1, 2, 3 Backtrack to 2 and visit 4 → Final Output: 0, 1, 2, 3, 4

### Time and Auxiliary Space Complexity

- **Expected Time Complexity:** O(V + E)
- **Expected Auxiliary Space Complexity:** O(V + E)

### Accepted Solutions (2)

#### Solution 1 (Java)

- **Submitted:** 2026-11-22 19:48:46
- **Status:** Correct
- **Marks:** 0

```java
class Solution {
    public ArrayList<Integer> dfs(ArrayList<ArrayList<Integer>> adj) {
        // code here
        // now dfs 
/* pehle 0 aata h then uska neigbour 2 then uska neighbour
4 ab uska neighbour nhi h to fhr usko stack recursive call m add kr 
do --> 
0
2
4

fhr iske baad recursive stack se element nikalenge --> 0 --> 2 --> 4 

then uska neighbour 3 aata h  fhr uska koi neighbour n hota to vo 
//recursive stack m add ho jata h 
3
// fhr recursive stack se element niklta h

// fhr 
1 
fhr 1 aata h
so o/p --> 0,2,4,3,1
    sbse pehle ans krke arraylist lenge
    */
    ArrayList<Integer> ans = new ArrayList<>();
    // ans.add(0);
    // ek visited mark krne k liye array lenge
    boolean[] visited = new boolean[adj.size()];
    visited[0]  = true;
    Stack<Integer> st = new Stack<>();
    // all dfs starts from 0 
    dfs(0, visited, ans, adj);
    // ab stack rcursive call se element nikale
    return ans;
}
// hume ek new fn bnana pdega jo sirf dfs dfs bs depth tk jaega
    public void dfs(int start, boolean[] visited, ArrayList<Integer>ans,ArrayList<ArrayList<Integer>> adj ){
        int node = start;
        visited[start]  = true;
        ans.add(start);
        for(int neighbour: adj.get(node)){
            if(!visited[neighbour]){
                // visited[neighbour]  = true;
                dfs(neighbour, visited, ans, adj);
            }
        }
    }
}
```

#### Solution 2 (Java)

- **Submitted:** 2026-11-22 19:47:59
- **Status:** Correct
- **Marks:** 2

```java
class Solution {
    public ArrayList<Integer> dfs(ArrayList<ArrayList<Integer>> adj) {
        // code here
        // now dfs 
/* pehle 0 aata h then uska neigbour 2 then uska neighbour
4 ab uska neighbour nhi h to fhr usko stack recursive call m add kr 
do --> 
0
2
4

fhr iske baad recursive stack se element nikalenge --> 0 --> 2 --> 4 

then uska neighbour 3 aata h  fhr uska koi neighbour n hota to vo 
//recursive stack m add ho jata h 
3
// fhr recursive stack se element niklta h

// fhr 
1 
fhr 1 aata h
so o/p --> 0,2,4,3,1
    sbse pehle ans krke arraylist lenge
    */
    ArrayList<Integer> ans = new ArrayList<>();
    // ans.add(0);
    // ek visited mark krne k liye array lenge
    boolean[] visited = new boolean[adj.size()];
    visited[0]  = true;
    Stack<Integer> st = new Stack<>();
    // all dfs starts from 0 
    dfs(0, visited, ans, adj);
    // ab stack rcursive call se element nikale
    return ans;
}
// hume ek new fn bnana pdega jo sirf dfs dfs bs depth tk jaega
    public void dfs(int start, boolean[] visited, ArrayList<Integer>ans,ArrayList<ArrayList<Integer>> adj ){
        int node = start;
        visited[start]  = true;
        ans.add(start);
        for(int neighbour: adj.get(node)){
            if(!visited[neighbour]){
                // visited[neighbour]  = true;
                dfs(neighbour, visited, ans, adj);
            }
        }
    }
}
```

*Generated on: 11/22/2026, 7:49:24 PM*