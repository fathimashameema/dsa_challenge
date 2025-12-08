class Solution {
  List<int> numberGame(List<int> nums) {
    List<int> target = List.filled(nums.length,0);
    nums.sort();
    for(int i =0;i<nums.length;i+=2){
       target[i] = nums[i+1];
       target[i+1]=nums[i];
    }
    return target;
  }
}