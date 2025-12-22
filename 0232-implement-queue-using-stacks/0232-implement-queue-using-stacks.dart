class MyQueue {
    List<int> inputStack =[];
    List<int> outputStack =[];

  MyQueue() {
    
  }
  
  void push(int x) {
    inputStack.add(x);
  }
  
  int pop() {
     if (outputStack.isEmpty) {
      while (inputStack.isNotEmpty) {
        outputStack.add(inputStack.removeLast());
      }
    }
    return outputStack.removeLast();
  }
  
  int peek() {
    if (outputStack.isEmpty) {
      while (inputStack.isNotEmpty) {
        outputStack.add(inputStack.removeLast());
      }
    }
    return outputStack.last;
  }
  
  bool empty() {
    return inputStack.isEmpty&&outputStack.isEmpty;
  }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * MyQueue obj = MyQueue();
 * obj.push(x);
 * int param2 = obj.pop();
 * int param3 = obj.peek();
 * bool param4 = obj.empty();
 */