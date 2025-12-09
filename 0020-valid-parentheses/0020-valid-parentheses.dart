class Solution {
  bool isValid(String s) {
    int size = 0;
List<String> stack =[];
  void push(String char) {
   stack.add(char);
    size++;
  }

  void pop() {
   stack.removeLast();
    size--;
  }

  String? peek() {
    if(stack.isEmpty){
        return null;
    }
    return stack[stack.length-1];
  }
  if(s.length<=1){
    return false;
  }
  for (int i = 0; i < s.length; i++) {
    if (s[i] == '(' ||
        s[i] == '[' ||
        s[i] == '{') {
      push(s[i]);
    } else if ((peek() == '(' && s[i] == ')') ||
        (peek() == '{' && s[i] == '}') ||
        (peek() == '[' && s[i] == ']')) {
      pop();
    } else {
      return false;
    }
  }
  return size == 0;
  }
  
}