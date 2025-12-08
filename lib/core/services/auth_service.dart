class AuthService {
  Future<bool> login(String mobile, String otp) async {
    await Future.delayed(Duration(seconds: 1));
    return otp == '1234';
  }

  Future<bool> signup(String name, String email, String mobile, String password) async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }

  Future<void> sendOtp(String mobile) async {
    await Future.delayed(Duration(seconds: 1));
  }
}
