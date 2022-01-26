import 'dart:convert' as convert;

import 'package:http/http.dart' as http;


void main() async {
  
  List<String> subjectList = ["http", "tcp", "flutter", "javascript", "database", "python", "golang", "docker", "kubernetes", "microservices"];
  
  List<Future<http.Response>> futureResponses = [] ;
  for( var i=0;i<subjectList.length;i++)
  {
    Uri url = Uri.https(
      'www.googleapis.com',
      '/books/v1/volumes',
      {'q': '{${subjectList[i]}}'},
    );
    futureResponses.add(http.get(url));
  }
  Future.wait(futureResponses).then((List<http.Response> responses){
   for(var i=0;i<responses.length;i++)
   {
     http.Response response = responses[i];
      if (response.statusCode == 200) {
        final jsonResponse = convert.jsonDecode(response.body);
        print("Number of books for subject ${subjectList[i]} are ${jsonResponse['totalItems']}");
      } else {
        print('Request for ${subjectList[i]} failed with status: ${response.statusCode}.');
      }
   }
  });
}
