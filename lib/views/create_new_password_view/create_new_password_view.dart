import 'package:flutter/material.dart';

class CreateNewPasswordView extends StatelessWidget {
  const CreateNewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Create New Password',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 8),
            Text(
              'Create your new password to login',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 24),
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
            SizedBox(height: 11),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Image.asset('assets/icons/password.png', scale: 20),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/icons/hide.png', scale: 20),
                ),
                hintText: 'Confirm Your Password',
              ),
            ),
            SizedBox(height: 11),
            SizedBox(height: 20),
            FilledButton(
              onPressed: () {},
              child: Text(
                'Create Password',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 10),
            Container(),
          ],
        ),
      ),
    );
    ;
  }
}
