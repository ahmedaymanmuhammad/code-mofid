import 'package:flutter/material.dart';

import 'widgets/forget_password_swap_buttons.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  bool isEmailSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'Forgot Your Password?',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 12),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'Enter your email or your phone number, we\nwill send you confirmation code',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFA1A8B0),
                ),
              ),
            ),
            SizedBox(height: 32),
            Container(
              padding: EdgeInsets.all(4),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Color(0xffE5E7EB), width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ForgetPasswordSwapButtons(
                      text: 'Email',
                      isSelected: isEmailSelected,
                      onTap: () {
                        setState(() {
                          isEmailSelected = true;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 4),
                  Expanded(
                    child: ForgetPasswordSwapButtons(
                      text: 'Phone',
                      isSelected: !isEmailSelected,
                      onTap: () {
                        setState(() {
                          isEmailSelected = false;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Image.asset(
                  'assets/icons/${isEmailSelected ? 'mail' : 'phone'}.png',
                  scale: 20,
                ),
                hintText: 'Enter Your ${isEmailSelected ? 'Email' : 'Phone'}',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: Color(0xFFE5E7EB)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: Color(0xFFE5E7EB)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: Color(0xFFE5E7EB), width: 2),
                ),
              ),
            ),
            SizedBox(height: 32),
            FilledButton(
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {},
              child: Text(
                'Reset Password',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
