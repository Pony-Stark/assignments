import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
void main() async {  
  List<String> subjectList = ["http", "tcp", "flutter", "javascript", "database", "python", "golang", "docker", "kubernetes", "microservices"];
  
  for( var i=0;i<subjectList.length;i++)
  {
    Uri url = Uri.https(
      'www.googleapis.com',
      '/books/v1/volumes',
      {'q': '{${subjectList[i]}}'},
    );
    http.get(url).then((http.Response response){
      if (response.statusCode == 200) {
        final jsonResponse = convert.jsonDecode(response.body);
        print("Number of books for url ${url.toString()} are ${jsonResponse['totalItems']}");
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    });
  }
}
