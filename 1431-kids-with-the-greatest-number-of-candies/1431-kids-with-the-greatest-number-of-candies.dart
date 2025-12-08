class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    List<bool> output = List.filled(candies.length ,true);
    for(int i=0;i<candies.length;i++){
        for(int j=0;j<candies.length;j++){
            if((candies[i]+extraCandies)<candies[j]){
                output[i]=false;
                break;
            }
        }
    }
    return output;
  }
}