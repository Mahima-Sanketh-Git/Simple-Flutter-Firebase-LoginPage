import 'package:flutter/material.dart';
import 'package:myapp/services/authentication.dart';
import 'package:myapp/widgets/textinpur.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

final TextEditingController emailcontroler1 = TextEditingController();
final TextEditingController password1 = TextEditingController();
final Craeteuser _craeteuser = Craeteuser();

class _SignupState extends State<Signup> {
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
              textEditingController: emailcontroler1,
            ),
            const SizedBox(
              height: 30,
            ),
            Textwidgets(
              hinttext: "Password",
              istrue: true,
              textInputType: TextInputType.visiblePassword,
              textEditingController: password1,
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                _craeteuser.createuser(context);
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
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
