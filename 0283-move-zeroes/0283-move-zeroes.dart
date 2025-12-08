class Solution {
  void moveZeroes(List<int> nums) {
    List<int> zeroes =[];
    for(int i=0;i<nums.length;i++){
        if(nums[i]==0){
            zeroes.add(nums[i]);
        }
    }
    (nums.removeWhere((value)=>value==0));
    nums.addAll(zeroes); 
  }
}