import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPView extends StatelessWidget {
  const OTPView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Text(
                  'Enter Verification Code',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF101623),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text.rich(
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Enter code that we have sent to your\nnumber',
                      ),
                      TextSpan(
                        text: ' 08528188*** ',
                        style: TextStyle(
                          color: Color(0xFF101623),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Pinput(
              separatorBuilder: (index) => SizedBox(width: 24),
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              defaultPinTheme: PinTheme(
                width: 64,
                height: 64,
                // margin: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                // padding: EdgeInsets.all(2),
                textStyle: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),

              focusedPinTheme: PinTheme(
                width: 64,
                height: 64,
                textStyle: TextStyle(fontSize: 20, color: Colors.black),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 30),
            FilledButton(
              onPressed: () {},
              child: Text(
                'Verify',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 24),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didn’t receive the code?',
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Resend', style: TextStyle(fontSize: 15)),
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
