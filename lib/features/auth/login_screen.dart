import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/widgets/gradient_container.dart';
import '../../shared/widgets/primary_button.dart';
import '../../shared/widgets/input_field.dart';
import '../../core/services/auth_service.dart';
import '../../core/services/storage_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _mobileController = TextEditingController();
  final _otpController = TextEditingController();
  final _authService = AuthService();
  final _storageService = StorageService();
  bool _isLoading = false;
  bool _otpSent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        gradient: AppColors.spiritualGradient,
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(24),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.self_improvement, size: 80, color: Colors.white),
                    SizedBox(height: 20),
                    Text(
                      'Welcome Back',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Continue your spiritual journey',
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                    SizedBox(height: 40),
                    InputField(
                      label: 'Mobile Number',
                      hint: 'Enter your mobile number',
                      controller: _mobileController,
                      keyboardType: TextInputType.phone,
                      validator: (val) => val?.isEmpty ?? true ? 'Required' : null,
                    ),
                    if (_otpSent) ...[
                      SizedBox(height: 16),
                      InputField(
                        label: 'OTP',
                        hint: 'Enter OTP (use 1234)',
                        controller: _otpController,
                        keyboardType: TextInputType.number,
                        validator: (val) => val?.isEmpty ?? true ? 'Required' : null,
                      ),
                    ],
                    SizedBox(height: 24),
                    PrimaryButton(
                      text: _otpSent ? 'Login' : 'Send OTP',
                      isLoading: _isLoading,
                      onPressed: _otpSent ? _handleLogin : _handleSendOtp,
                    ),
                    SizedBox(height: 16),
                    TextButton(
                      onPressed: () => context.push('/signup'),
                      child: Text(
                        'Don\'t have an account? Sign Up',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _handleSendOtp() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _isLoading = true);
    await _authService.sendOtp(_mobileController.text);
    setState(() {
      _isLoading = false;
      _otpSent = true;
    });
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('OTP sent! Use 1234 for demo')),
      );
    }
  }

  Future<void> _handleLogin() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _isLoading = true);
    final success = await _authService.login(_mobileController.text, _otpController.text);
    setState(() => _isLoading = false);
    if (success) {
      await _storageService.saveAuthToken('demo_token');
      if (mounted) context.go('/home');
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Invalid OTP')),
        );
      }
    }
  }
}
