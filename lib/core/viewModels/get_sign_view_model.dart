import 'package:get/get.dart';
import 'package:zodiac_sign_flutter/commons/generals_models/zodiac_sign.dart';
import 'package:zodiac_sign_flutter/core/repositories/get_sign_repository.dart';

class GetSignViewModel extends GetxController {
  final RxString dateUser = ''.obs;
  final RxString resultYourSignName = ''.obs;
  final RxString resultYourSignDescription = ''.obs;

  final GetSignRepository _getSignRepository = Get.find<GetSignRepository>();


  void setDayBirth(DateTime? result) {
    if (result == null) {
      return;
    }
    _getSignRepository.saveDateInPreference(result);
    getDateUser();
    getResult(result.day, result.month);
  }

  void getDateUser() {
    dateUser.value = _getSignRepository.getDataUser();
  }

  void getResult(int day, int month, ) {
    ZodiacSign? zodiacSign = _getSignRepository.getMyZodiacSign(day, month);
    if (zodiacSign == null) {
      return;
    }
    resultYourSignName.value = zodiacSign.name;
    resultYourSignDescription.value = zodiacSign.description;
  }
  void getMySignNetwork() {
    _getSignRepository.getMySignDescription();
  }


}