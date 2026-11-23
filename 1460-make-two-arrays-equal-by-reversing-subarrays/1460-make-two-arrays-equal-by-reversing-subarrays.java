class Solution {
    public boolean canBeEqual(int[] target, int[] arr) {
        // given 
        // target = [1,2,3,4]
        // arr = [2,4,1,3]
        Arrays.sort(target);
        Arrays.sort(arr);
        if(Arrays.equals(target,arr)){
            return true;
        }
        return false;
    }
}