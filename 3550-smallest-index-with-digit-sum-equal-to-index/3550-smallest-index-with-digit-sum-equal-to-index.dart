class Solution {
  int smallestIndex(List<int> nums) {
    for(int i=0;i<nums.length;i++){
        int number = nums[i];
        int sum =0;
        while(number>0){
            sum+=number%10;
            number = number~/10;
        }
        print(sum);
        if(i==sum){
            return i;
        }
    }
    return -1;
  }
}
