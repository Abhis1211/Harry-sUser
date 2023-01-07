import 'package:get/get.dart';

import '../../Api/Api.dart';
import '../../config/Urls/Urls.dart';

class Homeapi extends GetxController {
  var allproduct = [].obs;
  Getallproduct(context) async {
    await Api().apicall_get(Urls().allproduct, context).then((value) {
      allproduct.add(value);
      print(allproduct);
    });
  }
}
