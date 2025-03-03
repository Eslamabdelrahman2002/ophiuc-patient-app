import 'package:flutter/material.dart';
import 'package:project_app/Core/my_text_field.dart';
import 'package:project_app/Core/utils/assets_images.dart';
import 'package:project_app/Core/utils/label.dart';
import 'package:project_app/Core/utils/my_button.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  String? _selectedGender;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  bool _rememberMe = false;
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  void _validateForm(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Form is valid! Proceeding with sign-up.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.background),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Form(
              key: _formKey,
              child: SafeArea(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Label(text: "First Name"),
                              const SizedBox(height: 8),
                              MyTextField(
                                text: "First Name",
                                prefixIcon: Icons.person,
                                controller: firstNameController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your first name';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Label(text: "Last Name"),
                              const SizedBox(height: 8),
                              MyTextField(
                                text: "Last Name",
                                prefixIcon: Icons.person,
                                controller: lastNameController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your last name';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Label(text: "Email Address"),
                    const SizedBox(height: 8),
                    MyTextField(
                      text: "Email",
                      prefixIcon: Icons.email,
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    const Label(text: "Password"),
                    const SizedBox(height: 8),
                    MyTextField(
                      text: "Password",
                      prefixIcon: Icons.lock,
                      suffixIcon: _obscurePassword ? Icons.visibility : Icons.visibility_off,
                      obscureText: _obscurePassword,
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      },
                      onSuffixIconPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    const Label(text: "Confirm Password"),
                    const SizedBox(height: 8),
                    MyTextField(
                      text: "Confirm Password",
                      prefixIcon: Icons.lock,
                      suffixIcon: _obscureConfirmPassword ? Icons.visibility : Icons.visibility_off,
                      obscureText: _obscureConfirmPassword,
                      controller: confirmPasswordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please confirm your password';
                        }
                        if (value != passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                      onSuffixIconPressed: () {
                        setState(() {
                          _obscureConfirmPassword = !_obscureConfirmPassword;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Label(text: 'Gender'),
                        Radio<String>(
                          value: 'Male',
                          groupValue: _selectedGender,
                          onChanged: (String? value) {
                            setState(() {
                              _selectedGender = value;
                            });
                          },
                          activeColor: Color(0xFF30A77A).withOpacity(.3),
                        ),
                        const Label(text: "Male"),
                        Radio<String>(
                          value: 'Female',
                          groupValue: _selectedGender,
                          onChanged: (String? value) {
                            setState(() {
                              _selectedGender = value;
                            });
                          },
                          activeColor: Color(0xFF30A77A).withOpacity(.3),
                        ),
                        const Label(text: "Female"),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Label(text: 'Height (cm)'),
                    const SizedBox(height: 8),
                    MyTextField(
                      text: 'Enter your height',
                      controller: heightController,
                      prefixIcon: Icons.height,
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 20),
                    const Label(text: 'Weight (kg)'),
                    const SizedBox(height: 8),
                    MyTextField(
                      text: 'Enter your weight',
                      controller: weightController,
                      prefixIcon: Icons.line_weight,
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 20),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          focusColor: Colors.green.shade900,
                          value: _rememberMe,
                          onChanged: (value) {
                            setState(() {
                              _rememberMe = value ?? false;
                            });
                          },
                        ),
                        const Text('Remember Me'),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: MyButton(
                        function: () => _validateForm(context),
                        text: "Sign Up",
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}