void main() {
  
  print('Start of main');
  
  httpGet('http://return-string.com').then((response) {
    print(response);
  }).catchError((error) {
    print('Error: $error');
  });
  
  print('End of the program');
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 1), () {
    
    throw 'Error in the HTTP request';
    
    // return 'Response from the HTTP request';
    
  });
}
