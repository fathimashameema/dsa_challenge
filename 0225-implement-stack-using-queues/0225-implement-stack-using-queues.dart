class MyStack {
List<int> queue =[];
  MyStack() {
    
  }
  
  void push(int x) {
    queue.add(x);
  }
  
  int pop() {
    if(queue.isEmpty){
        return -1;
    }
   return queue.removeLast();
  }
  
  int top() {
   return queue[queue.length-1];
  }
  
  bool empty() {
   return queue.isEmpty;
  }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * MyStack obj = MyStack();
 * obj.push(x);
 * int param2 = obj.pop();
 * int param3 = obj.top();
 * bool param4 = obj.empty();
 */