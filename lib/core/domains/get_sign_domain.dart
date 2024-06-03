
import 'package:http/http.dart' as http;


class GetSignDomain {
  Future<http.Response> fetchZodiacSigns() async {
    final headers = <String, String>{
      'x-rapidapi-key': '2ea02a4e12mshec59ed1788176b0p10cbcbjsn5499602f11b2',
    };

    final response = await http.get(Uri.parse('https://zodiac-sign-api1.p.rapidapi.com/all'), headers: headers);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    return response;
  }
}
