void main() {
  
  emitNumbers().listen( (value) {
    print('Steam value: $value');
  });
  
}

Stream<int> emitNumbers() {
  return Stream.periodic( const Duration(seconds: 1), (value) {
//     print('from periodic $value');
    return value; 
  }).take(5);
}