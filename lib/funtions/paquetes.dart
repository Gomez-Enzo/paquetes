import '../response/response.dart';
import 'package:http/http.dart' as http;

void getResponse_service() {
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then((res) {
    final response = responseFromJson(res.body);
    print('Page: ${response.page}');
    print('Per_page: ${response.perPage}');
    print('Id del ultimo elemento: ${response.data.last.id}');
  });
}
