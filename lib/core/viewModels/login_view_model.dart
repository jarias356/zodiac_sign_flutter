import 'package:get/get.dart';
import 'package:zodiac_sign_flutter/commons/database/database.dart';

import '../repositories/login_repository.dart';

class LoginViewModel extends GetxController {
  var counter = 0.obs;

  final _loginRepository = Get.find<LoginRepository>();
  final _dbAndDao = Get.find<DbAndDao>();

  void updateCounter() {
    var response = _loginRepository.incrementCounter(counter.value);
    var catchAndErrors = CatchAndErrors(
        id: 0,
        codeError: 0,
        dateError: DateTime.now().toString(),
        errorDescription: 'Error incrementing counter',
        moduleError: 'LoginViewModel'
    );
    _dbAndDao.catchAndErrorDao.insertCatchAndError(catchAndErrors);
    switch (response) {
      case 0:
        Get.snackbar('Error', 'Error incrementing counter');
        break;
      default:
        counter.value = response;
        update();
        break;
    }

  }

}