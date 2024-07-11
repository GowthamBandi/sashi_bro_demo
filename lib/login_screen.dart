import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sashi_bro_demo/app_colors.dart';
import 'package:sashi_bro_demo/widgets/custom_button.dart';
import 'package:sashi_bro_demo/widgets/my_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Text(
                  "H",
                  style: TextStyle(color: Colors.white, fontSize: 130),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Log in to your account using email or\n social networks",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextfield(
                  hint: "Mobile number",
                  textEditingController: mobileNumberController,
                  textInputType: TextInputType.number,
                  bgColor: Color.fromRGBO(216, 216, 216, 0.05),
                  borderNeeded: true,
                  iconNeeded: true,
                  leadingIcon: const Icon(
                    Icons.phone,
                    color: Color.fromRGBO(67, 73, 94, 1),
                  ),
                  borderRadius: 10,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextfield(
                    hint: "Password",
                    maxLines: 1,
                    obscureText: showPassword,
                    textEditingController: passwordController,
                    // bgColor: AppColors.textFieldColor,
                    bgColor: Color.fromRGBO(216, 216, 216, 0.05),
                    borderNeeded: true,
                    borderRadius: 10,
                    iconNeeded: true,
                    leadingIcon: const Icon(
                      Icons.lock,
                      color: Color.fromRGBO(67, 73, 94, 1),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      icon: Icon(
                        showPassword ? Icons.visibility : Icons.visibility_off,
                        color: Colors.white,
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Login using OTP",
                          style: TextStyle(
                              color: Color(0xFF6679C0),
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Color(0xFF6679C0),
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  buttonName: "Log In",
                  borderRadius: 10,
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                  tColor: Colors.white,
                  gradient: LinearGradient(
                      colors: [AppColors.buttonColor1, AppColors.buttonColor2]),
                ),
                const SizedBox(
                  height: 30,
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'First time here? ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                        text: 'Sign up',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Or sign in with ",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      buttonName: "Google",
                      isBoxShadow: false,
                      enablePrefixIcon: true,
                      prefixIcon: Icon(
                        FontAwesomeIcons.google,
                        color: Colors.red,
                      ),
                      width: 135,
                      bgColor: Color.fromRGBO(216, 216, 216, 0.05),
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                    CustomButton(
                      buttonName: "Facebook",
                      width: 135,
                      isBoxShadow: false,
                      bgColor: Color.fromRGBO(216, 216, 216, 0.05),
                      enablePrefixIcon: true,
                      prefixIcon: Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                      ),
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
