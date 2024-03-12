import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ui_exam/screens/signup.dart';
import 'package:ui_exam/widgets/button.dart';
import 'package:ui_exam/widgets/textfield.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sign In",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: "Create an Account",
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
                      text: 'Sign Up',
                      style: const TextStyle(color: Colors.white),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()),
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
                validator: (value) {},
                labelText: "Name",
                keyboardType: TextInputType.name,
                controller: nameController,
                obscureText: false,
              ),
             
              const SizedBox(
                height: 16,
              ),
              TextFieldWidget(
                validator: (value){},
                labelText: "Password",
                keyboardType: TextInputType.name,
                controller: passwordController,
                obscureText: true,
              ),
            
              const SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: ButtonWidget(ontap: (){}, buttonText: "Submit"),
            )
            ],
          ),
        ),
      ),
    );
  }
}
