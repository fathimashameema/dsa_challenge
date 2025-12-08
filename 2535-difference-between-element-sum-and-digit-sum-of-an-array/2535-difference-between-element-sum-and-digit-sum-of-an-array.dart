class Solution {
  int differenceOfSum(List<int> nums) {
    int digitsum=0;
    int elementsum =0;
    for(int i=0;i<nums.length;i++){
        elementsum = elementsum+nums[i];
        String numstr = nums[i].toString();
        for(int j=0;j<numstr.length;j++){
            digitsum = digitsum + int.parse(numstr[j]);
        }
    }
    return (elementsum - digitsum).abs();
  }
}