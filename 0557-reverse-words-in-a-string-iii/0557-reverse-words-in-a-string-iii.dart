class Solution {
  String reverseWords(String s) {
    List<String> words = s.split(' ');
    List<String> reversedList =[];
    for(var word in words){
        List<String> splitWord = word.split('');
       reversedList.add(splitWord.reversed.join(''));
       print(splitWord.reversed);
        
    }
    return reversedList.join(' ');
    
  }
}