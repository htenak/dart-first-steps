void main() async {
  
  print('Start of main');

  try {
    final value = await httpGet('http://return-string.com');
    print(value);
  } on Exception catch(error) {
    print('We have an Exception: $error');
  } catch (error) {
    print('Something went wrong: $error');
  } finally {
    print('End try-catch');
  }

  print('End of the program');
  
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));

  throw Exception('Request without params');

//   throw 'Request error';

//   return 'We have the data';
}
