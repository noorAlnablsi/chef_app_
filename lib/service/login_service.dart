import 'package:chef_app/model/user_model.dart';
import 'package:dio/dio.dart';

login(UserModel user) async {
Dio dio = Dio();
try {
Response response = await dio.post(
"https://food-api-omega.vercel.app/api/v1/chef/signin",
// options: Options(
// headers: {
// 'token' :
// }
// ),
data: user.toMap());
print(response);

return response.data['token'];
} catch (e) {
print(e);
return false;
}
}