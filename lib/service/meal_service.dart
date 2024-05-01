import 'package:chef_app/config.dart';
import 'package:chef_app/model/meal_model.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<MealModel>> getMeal() async {
  Dio dio = Dio();

  try {
    Response response = await dio.get(
        "https://food-api-omega.vercel.app/api/v1/chef/get-chef/66166877047e0824bcaa3368/meals",
        options: Options(headers: {
          'token':
              'FOODAPI ${config.get<SharedPreferences>().getString('token')}'
        }));

    List<MealModel> meals = List.generate(response.data['meals'].length,
        (index) => MealModel.fromMap(response.data['meals'][index]));

    return meals;
  } catch (e) {
    print(e);
    return [];
  }
}
