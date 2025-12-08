import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/widgets/gradient_container.dart';
import '../../shared/widgets/primary_button.dart';
import '../../shared/widgets/input_field.dart';
import '../../core/services/auth_service.dart';
import '../../core/services/storage_service.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _passwordController = TextEditingController();
  final _authService = AuthService();
  final _storageService = StorageService();
  bool _isLoading = false;
  bool _obscurePassword = true;

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
                      'Create Account',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Begin your spiritual transformation',
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                    SizedBox(height: 40),
                    InputField(
                      label: 'Full Name',
                      controller: _nameController,
                      validator: (val) => val?.isEmpty ?? true ? 'Required' : null,
                    ),
                    SizedBox(height: 16),
                    InputField(
                      label: 'Email',
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (val) => val?.isEmpty ?? true ? 'Required' : null,
                    ),
                    SizedBox(height: 16),
                    InputField(
                      label: 'Mobile Number',
                      controller: _mobileController,
                      keyboardType: TextInputType.phone,
                      validator: (val) => val?.isEmpty ?? true ? 'Required' : null,
                    ),
                    SizedBox(height: 16),
                    InputField(
                      label: 'Password',
                      controller: _passwordController,
                      obscureText: _obscurePassword,
                      validator: (val) => val?.isEmpty ?? true ? 'Required' : null,
                      suffixIcon: IconButton(
                        icon: Icon(_obscurePassword ? Icons.visibility : Icons.visibility_off),
                        onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                      ),
                    ),
                    SizedBox(height: 24),
                    PrimaryButton(
                      text: 'Sign Up',
                      isLoading: _isLoading,
                      onPressed: _handleSignup,
                    ),
                    SizedBox(height: 16),
                    TextButton(
                      onPressed: () => context.pop(),
                      child: Text(
                        'Already have an account? Login',
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

  Future<void> _handleSignup() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _isLoading = true);
    final success = await _authService.signup(
      _nameController.text,
      _emailController.text,
      _mobileController.text,
      _passwordController.text,
    );
    setState(() => _isLoading = false);
    if (success) {
      await _storageService.saveAuthToken('demo_token');
      if (mounted) context.go('/home');
    }
  }
}
