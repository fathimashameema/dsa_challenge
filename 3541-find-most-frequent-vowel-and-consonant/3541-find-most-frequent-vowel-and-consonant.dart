class Solution {
  int maxFreqSum(String s) {
    List<String> vowels = ['a','e','i','o','u'];
    List<String> letters = s.split('');
    Map<String, int> frequency ={};
    int fVowel =0;
   int fConsonent =0;
    for(int i=0;i<letters.length;i++){
frequency[letters[i]] = (frequency[letters[i]] ?? 0) + 1;
    }
        for(String ltr in letters){
            if(vowels.contains(ltr)&& frequency[ltr]!>fVowel){
                fVowel = frequency[ltr]!;
            }else if(!vowels.contains(ltr)&& frequency[ltr]!>fConsonent){
                fConsonent = frequency[ltr]!;
            }
        }
        print(fConsonent);
        print(fVowel);
    return fConsonent+fVowel;
  }
}