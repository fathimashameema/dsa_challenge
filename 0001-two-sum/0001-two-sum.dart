class Solution {
  List<int> twoSum(List<int> nums, int target) {
    // List<int> output =[];
    for(int i=0;i<nums.length;i++){
        for(int j=i+1;j<nums.length;j++){
            if(nums[i]+nums[j]==target){
                // output.add(i);
                // output.add(j);
                return [i,j];
            }
        }
    }
    return [];
  }
}