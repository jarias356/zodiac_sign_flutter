class LoginRepository {
  int incrementCounter(int currentCounter) {
    try {
      var newValue = currentCounter+1;
      if (newValue > 0 && newValue > currentCounter) {
        return newValue;

      } else {
        return currentCounter;

      }

    } catch (e) {
      return currentCounter;

    }


  }

}