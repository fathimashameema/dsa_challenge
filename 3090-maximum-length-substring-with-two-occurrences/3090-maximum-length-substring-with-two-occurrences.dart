class Solution {
  int maximumLengthSubstring(String s) {
    List<String> substrings = [];
    String output ='';
  for (int i = 0; i < s.length; i++) {
    String substring = '';
    for (int j = i; j <= s.length-1; j++) {
      substring = substring + s[j];
      substrings.add(substring);
    }
  }

  for(String substring in substrings){
    Map<String,int> frequency = {};
    for(int i=0;i<substring.length;i++){
        frequency[substring[i]] = (frequency[substring[i]]??0)+1;
    }
    bool flag = true;
    for(int i=0;i<substring.length;i++){
        if(frequency[substring[i]]! <=2){
            continue;
        }else{
            flag = false;
        }
    }
    if(flag && substring.length>output.length){
output = substring;
    }
  }
  return output.length;
  }
}