import 'package:flutter/material.dart';
import 'package:myapp/screens/home.dart';
import 'package:myapp/screens/signup.dart';
import 'package:myapp/widgets/textinpur.dart';
import 'package:myapp/services/authentication.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

final TextEditingController emailcontroler = TextEditingController();
final TextEditingController password = TextEditingController();
final Signuser _signuser = Signuser();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Textwidgets(
              hinttext: "Email",
              istrue: false,
              textInputType: TextInputType.emailAddress,
              textEditingController: emailcontroler,
            ),
            const SizedBox(
              height: 30,
            ),
            Textwidgets(
              hinttext: "Password",
              istrue: true,
              textInputType: TextInputType.visiblePassword,
              textEditingController: password,
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _signuser.signinemailandpassword(context).then(
                    (value) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    },
                  );
                });
              },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "LogIn",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const Text("I don't have account ? "),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Signup()));
                  },
                  child: Container(
                    child: const Text(
                      "SignUp",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
