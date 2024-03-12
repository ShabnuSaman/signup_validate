import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ui_exam/screens/home.dart';
import 'package:ui_exam/screens/signIn.dart';
import 'package:ui_exam/widgets/button.dart';
import 'package:ui_exam/widgets/textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
   bool _isVisible = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  late String password;
  late String confirmPassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1651904906716-7158a8656ac9?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Y29sb3JncmFkaWVudHxlbnwwfHwwfHx8MA%3D%3D"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: "Already have a account?",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      const WidgetSpan(
                        child: SizedBox(
                          width: 5,
                        ),
                      ),
                      TextSpan(
                        text: 'Sign In',
                        style: const TextStyle(color: Colors.white),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignIn()),
                            );
                          },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFieldWidget(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please fill the field';
                    } else {
                      return null;
                    }
                  },
                  labelText: "Name",
                  keyboardType: TextInputType.name,
                  controller: nameController,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFieldWidget(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please fill email field';
                    } else if (value.isNotEmpty) {
                      String regexp = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';
                      RegExp emailRegularExp = RegExp(regexp);

                      String email = mailController.text;

                      if (!emailRegularExp.hasMatch(email)) {
                        return 'invalid email id';
                      }
                    } else {
                      return null;
                    }
                    return null;
                  },
                  labelText: "Email",
                  keyboardType: TextInputType.name,
                  controller: mailController,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFieldWidget(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please fill password field';
                    } else if (value.isNotEmpty) {
                      String regexp =
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                      RegExp passwordRegularExp = RegExp(regexp);

                      password = passwordController.text;

                      if (!passwordRegularExp.hasMatch(password)) {
                        return 'invalid Password';
                      }
                    } else {
                      return null;
                    }
                    return null;
                  },
                  labelText: "Password",
                  keyboardType: TextInputType.name,
                  controller: passwordController,
                  obscureText: !_isVisible,
                  suffixIcon:  IconButton(
                      onPressed: () {
                        setState(() {
                          _isVisible = !_isVisible;
                        });
                      },
                      icon: !_isVisible
                          ? Icon(
                              Icons.visibility_off,
                            
                            )
                          : Icon(
                              Icons.visibility,
                             
                            ),
                    ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFieldWidget(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please fill password field';
                    } else if (value.isNotEmpty) {
                      String confirmregexp =
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                      RegExp confirmPasswordRegularExp = RegExp(confirmregexp);

                      confirmPassword = confirmPassController.text;
                      if (password != confirmPassword) {
                        return 'the password doesnt match with the above password';
                      } else if (!confirmPasswordRegularExp
                          .hasMatch(confirmPassword)) {
                        return "Invalid password";
                      }
                    } else {
                      return null;
                    }
                    return null;
                  },
                  labelText: "Confirm Password",
                  keyboardType: TextInputType.name,
                  controller: confirmPassController,
                  obscureText: !_isVisible,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isVisible = !_isVisible;
                        });
                      },
                      icon: !_isVisible
                          ? Icon(
                              Icons.visibility_off,
                            
                            )
                          : Icon(
                              Icons.visibility,
                             
                            ),
                    ),
                ),
                const SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: ButtonWidget(
                      ontap: () {
                        String name = nameController.text;
                        String email = mailController.text;
                        if (formKey.currentState!.validate()) {
                          // navigator
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => HomeScreen(
                                email: email,
                                name: name,
                              ),
                            ),
                          );
                        } else {
                          const snackBar = SnackBar(
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.white,
                            content: Text(
                              "please fill input fields...",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }

                        // mailController.clear();
                        // passwordController.clear();
                        // confirmPassController.clear();
                      },
                      buttonText: "Submit"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
