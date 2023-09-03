
import 'package:api_example_aibek/models/post_model.dart';
import 'package:http/http.dart' as http;

class PostApiService{
  final http.Client client = http.Client();

  Future <List<TimeModel>> getData() async{
    try {
      final response = await client.get(Uri.parse("https://script.google.com/macros/s/AKfycby_4RDzDZ_RQ9NnJWw1dx_1PBk5L9EnKaHVH7ttZL9Fqc1c67FediOsymVNugDJVOoZ6w/exec?newValue=bishkek"));
      if(response.statusCode == 200 || response.statusCode == 201){
        
      } else {
        print(response);
      throw ServerExeption();
      }
      
    } catch (e) {
      print(e);
      throw ServerExeption();
      
    }
  }
}

class ServerExeption implements Exception {
  
}