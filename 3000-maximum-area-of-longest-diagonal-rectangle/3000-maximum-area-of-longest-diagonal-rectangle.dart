import 'dart:math';
class Solution {
  int areaOfMaxDiagonal(List<List<int>> dimensions) {
    num longest =0;
    List<int> longestList =[];
    for(int i=0;i<dimensions.length;i++){
        List<int> j = dimensions[i];
       num root = (j[0]*j[0])+(j[1]*j[1]);
       num diagonal = sqrt(root);
        if(diagonal>longest){
            longest = diagonal;
            longestList = j;
        }else if(diagonal==longest){
            if(j[0]*j[1]>longestList[0]*longestList[1]){
                longest = diagonal;
                longestList=j;
            }
        }
    }
    return longestList[0]*longestList[1];
  }
}