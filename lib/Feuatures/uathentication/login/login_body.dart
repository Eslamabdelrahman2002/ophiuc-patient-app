import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/Feuatures/home/view/home_screen.dart';
import 'package:project_app/Feuatures/uathentication/widgets/row_signup.dart';
import '../../../Core/my_text_field.dart';
import '../../../Core/utils/label.dart';
import '../../../Core/utils/my_button.dart';
import '../../../Core/utils/assets_images.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;
  bool _rememberMe = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _handleLogin() {
    navigation();
    Future.microtask(() {
      if (_formKey.currentState!.validate()) {
        final email = emailController.text.trim();
        final password = passwordController.text.trim();


        print("Email: $email, Password: $password, Remember Me: $_rememberMe");

      }
    });
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
            fit: BoxFit.cover, // Ensure the background image covers the screen
          ),
        ),
        child: Center( // Wrap the SingleChildScrollView with a Center widget
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,// Use min to center the content
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Label(text: "Email address"),
                  const SizedBox(height: 8),
                  MyTextField(
                    text: "Email",
                    prefixIcon: Icons.email,
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your email";
                      }
                      if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return "Enter a valid email";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  const Label(text: "Password"),
                  const SizedBox(height: 8),
                  MyTextField(
                    text: "Password",
                    prefixIcon: Icons.lock,
                    controller: passwordController,
                    obscureText: _obscureText,
                    suffixIcon: _obscureText ? Icons.visibility : Icons.visibility_off,
                    onSuffixIconPressed: _togglePasswordVisibility,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your password";
                      }
                      if (value.length < 6) {
                        return "Password must be at least 6 characters";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Center the checkbox and text
                    children: <Widget>[
                      Checkbox(
                        value: _rememberMe,
                        onChanged: (value) {
                          setState(() {
                            _rememberMe = value ?? false;
                          });
                        },
                      ),
                      const Text('Remember Me',),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: MyButton(
                      text: "Sign In",
                      function: _handleLogin,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const RowSignup(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void navigation() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(
            () =>  HomeScreen(),
        transition: Transition.fade,
        duration:const Duration(milliseconds: 300), // Specify a valid duration here
      );
    });
  }
}