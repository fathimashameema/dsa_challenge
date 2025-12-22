class Solution {
  List<int> sortedSquares(List<int> nums) {
    List<int> sqr =[];
    for(int i=0;i<nums.length;i++){
        sqr.add(nums[i]*nums[i]);
    }
     sqr.sort();
     return sqr;
  }
}