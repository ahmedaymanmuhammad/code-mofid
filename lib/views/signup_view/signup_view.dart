import 'package:codemofidapplication/views/login_view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Sign Up', style: TextStyle(fontSize: 24)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 32),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Image.asset('assets/icons/user.png', scale: 20),
                hintText: 'Enter Your Name',
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Image.asset('assets/icons/mail.png', scale: 20),
                hintText: 'Enter Your Email',
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Image.asset('assets/icons/password.png', scale: 20),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/icons/hide.png', scale: 20),
                ),
                hintText: 'Enter Your Password',
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                Text.rich(
                  TextSpan(
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(text: 'I agree to the medidoc'),
                      TextSpan(
                        text: ' Terms of Service',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      TextSpan(text: '\nand'),
                      TextSpan(
                        text: ' Privacy Policy',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 22),
            FilledButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Container(
                        padding: EdgeInsets.all(16),
                        width: 320,
                        height: 380,
                        child: Column(
                          children: [
                            SizedBox(height: 18),
                            CircleAvatar(
                              backgroundColor: Color(0xFFF5F8FF),
                              radius: 50,
                              child: Icon(
                                Icons.check,
                                size: 50,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(height: 26),
                            Text(
                              'Success',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 26),
                            Text(
                              'Your account has been successfully registered',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFA1A8B0),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 20),
                            FilledButton(
                              style: FilledButton.styleFrom(
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginView(),
                                  ),
                                );
                              },
                              child: Text(
                                'Log In',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginView()),
                      );
                    },
                    child: Text('Log In'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
