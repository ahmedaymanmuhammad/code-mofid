import 'package:codemofidapplication/views/forget_password_view/forget_password_view.dart';
import 'package:codemofidapplication/views/login_view/widgets/social_buttons.dart';
import 'package:codemofidapplication/views/signup_view/signup_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        title: Text('Log In', style: TextStyle(fontSize: 24)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Text(
                'Hi Welcome back, you’ve been missed',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 39),
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
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgetPasswordView(),
                    ),
                  );
                },
                child: Text('Forgot Password?', style: TextStyle(fontSize: 15)),
              ),
            ),
            SizedBox(height: 22),
            FilledButton(
              onPressed: () {},
              child: Text(
                'Log In',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupView()),
                      );
                    },
                    child: Text('Sign Up', style: TextStyle(fontSize: 15)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Row(
                children: [
                  Expanded(child: Divider(color: Color(0xFF4d5057))),
                  SizedBox(width: 4),
                  Text('OR'),
                  SizedBox(width: 4),
                  Expanded(child: Divider(color: Color(0xFF4d5057))),
                ],
              ),
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SocialButtons(
                  icon: 'google.png',
                  text: 'Google',
                  onPressed: () {},
                ),
                SizedBox(height: 16),
                SocialButtons(
                  icon: 'facebook.png',
                  text: 'Facebook',
                  onPressed: () {},
                ),
                SizedBox(height: 16),
                SocialButtons(
                  icon: 'linkedin.png',
                  text: 'Linked In',
                  onPressed: () {},
                ),
                SizedBox(height: 16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
