void main() async {

  print('Start of main');

  try {
    final value = await httpGet('http://return-string.com');
    print(value);
  } catch (error) {
    print('Something went wrong: $error'); 
  }

  print('End of the program');
  
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));
  
  throw 'Request error';
    
//   return 'We have the data';
}
