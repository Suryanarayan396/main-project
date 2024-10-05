import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'login_signup_viewmodel.dart';

class LoginSignup extends StatefulWidget {
  const LoginSignup({super.key});

  @override
  State<LoginSignup> createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  String email = '';
  String password = '';
  final PageController pageController = PageController();
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginSignupviewmodel>.reactive(
      // onModelReady: (model) => model.startTimer(),
      builder: (context, model, child) {
        return Scaffold(
          body: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(image: NetworkImage(""))),
                  ),
                  Center(
                    child: Text(
                      "overlay text",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                TextButton(
                    onPressed: () {
                      model.toggleView();
                      pageController.jumpToPage(0);
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                Text("|", style: TextStyle(color: Colors.white, fontSize: 20)),
                TextButton(
                    onPressed: () {
                      model.toggleView();
                      pageController.jumpToPage(1);
                    },
                    child: Text(
                      "Signup",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ]),
              Form(
                key: model.formkey,
                child: Expanded(
                  child: PageView(
                    controller: pageController,
                    physics: NeverScrollableScrollPhysics(),
                    children: [Loginform(), Signupform()],
                  ),
                ),
              )
            ],
          ),
        );
      },
      viewModelBuilder: () => LoginSignupviewmodel(),
    );
  }
}

class Signupform extends StatelessWidget {
  const Signupform({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "username is required";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                labelText: 'Email',
                filled: true,
                fillColor: Colors.grey[200],
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
                fillColor: Colors.grey[200],
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Confirm password',
                filled: true,
                fillColor: Colors.grey[200],
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Signup"))
          ],
        ),
      ),
    );
  }
}

class Loginform extends StatelessWidget {
  const Loginform({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                filled: true,
                fillColor: Colors.grey[200],
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              onChanged: (value) {},
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                filled: true,
                fillColor: Colors.grey[200],
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              onChanged: (value) {},
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
