import 'package:flutter/material.dart';
import 'pro7b.dart'; // import validation functions

class pro7aApp extends StatefulWidget {
  const pro7aApp({super.key});

  @override
  State<pro7aApp> createState() => _pro7aAppState();
}

class _pro7aAppState extends State<pro7aApp> {
  final _formKey = GlobalKey<FormState>();

  // Controllers for all your fields
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    // Dispose all controllers to avoid memory leaks
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Form Application')),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset('lbrc.jpg', width: 100, height: 100),
                
                CustomTextField(
                  label: 'First Name',
                  controller: firstNameController,
                  validator: (val) => validateName(val!) ? null : 'Enter first name',
                ),

                CustomTextField(
                  label: 'Last Name',
                  controller: lastNameController,
                  validator: (val) => validateName(val!) ? null : 'Enter last name',
                ),

                CustomTextField(
                  label: 'Email',
                  suffixText: '@lbrce.ac.in',
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (val) => validateEmail(val!) ? null : 'Enter valid email',
                ),

                CustomTextField(
                  label: 'Phone number',
                  prefixText: '+91',
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  maxLength: 10,
                  validator: (val) => validatePhoneNumber(val!) ? null : 'Enter 10 digit phone number',
                ),

                const Divider(indent: 8, endIndent: 8),

                CustomTextField(
                  label: 'Username',
                  controller: usernameController,
                  validator: (val) => validateUsername(val!) ? null : 'Enter username',
                ),

                CustomTextField(
                  label: 'Password',
                  controller: passwordController,
                  obscureText: true,
                  validator: (val) => validatePassword(val!) ? null : 'Password must be at least 6 chars',
                ),

                CustomTextField(
                  label: 'Confirm Password',
                  controller: confirmPasswordController,
                  obscureText: true,
                  validator: (val) => validateConfirmPassword(passwordController.text, val!) ? null : 'Passwords do not match',
                ),

                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // All validations passed
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Form Submitted Successfully!')),
                      );
                    }
                  },
                  child: const Text('Register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class CustomTextField extends StatelessWidget {
  final String label;
  final String? prefixText;
  final String? suffixText;
  final TextInputType? keyboardType;
  final int? maxLength;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CustomTextField({
    Key? key,
    required this.label,
    this.prefixText,
    this.suffixText,
    this.keyboardType,
    this.maxLength,
    this.obscureText = false,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        maxLength: maxLength,
        obscureText: obscureText,
        validator: validator,
        decoration: InputDecoration(
          labelText: label,
          prefixText: prefixText,
          suffixText: suffixText,
          border: const OutlineInputBorder(),
          counterText: '',
        ),
      ),
    );
  }
}
