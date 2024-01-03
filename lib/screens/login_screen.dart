import 'package:flutter/material.dart';
import 'package:peeps/constants/colors.dart';
import 'package:peeps/constants/consts.dart';
import 'package:peeps/constants/images.dart';
import 'package:peeps/constants/strings.dart';
import 'package:peeps/widgets/text_input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //* Add some padding
              Flexible(
                flex: 2,
                child: Container(),
              ),

              //* App Logo
              Image.asset(
                whiteLabel,
                height: 64,
              ),

              const SizedBox(
                height: 24,
              ),

              //* Email input field
              TextInputField(
                textEditingController: _emailController,
                hintText: enterEmail,
                textInputType: TextInputType.emailAddress,
              ),

              const SizedBox(
                height: 24,
              ),

              //* Password input field
              TextInputField(
                textEditingController: _passwordController,
                hintText: enterPass,
                textInputType: TextInputType.text,
                isPass: true,
              ),

              const SizedBox(
                height: 24,
              ),

              //* Login button
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: const Text(
                    login,
                    style: TextStyle(
                      fontFamily: semibold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              //* SignUp transition button
              const SizedBox(
                height: 12,
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: const Text(
                      dontHaveAcc,
                      style: TextStyle(
                        color: bgColor,
                        fontFamily: regular,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    // onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: const Text(
                        signup,
                        style: TextStyle(
                          color: whiteColor,
                          fontFamily: bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
