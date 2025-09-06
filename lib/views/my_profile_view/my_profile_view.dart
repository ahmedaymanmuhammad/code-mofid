import 'package:flutter/material.dart';

import 'widgets/profile_menu_buttons.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: TextStyle(fontSize: 24)),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(19),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ClipOval(
                  child: Image.network(
                    'https://media.licdn.com/dms/image/v2/D4E03AQFqVMnoq3qC3g/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1727137693750?e=1758153600&v=beta&t=_i_oq7lVSb1z5SkAZGBGQAidUz-wO5JDk3ODFKatwGQ',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 14),
              Text(
                'Ahmed Ayman',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              ProfileMenuButtons(
                icon: 'user.png',
                text: 'My Profile',
                onPressed: () {},
              ),
              ProfileMenuButtons(
                icon: 'learning.png',
                text: 'My Learning',
                onPressed: () {},
              ),
              ProfileMenuButtons(
                icon: 'wishlist.png',
                text: 'My Wishlist',
                onPressed: () {},
              ),
              ProfileMenuButtons(
                icon: 'setting.png',
                text: 'My Settings',
                onPressed: () {},
              ),
              ProfileMenuButtons(
                icon: 'payment.png',
                text: 'My Payment Method',
                onPressed: () {},
              ),
              ProfileMenuButtons(
                icon: 'logout.png',
                text: 'Log Out',
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 75,
          color: Colors.white,
          child: Row(
            children: [
              Expanded(child: Image.asset('assets/icons/home.png',scale: 20,)),
              Expanded(child: Image.asset('assets/icons/cart.png',scale: 20,)),
              Expanded(child: Image.asset('assets/icons/setting.png',scale: 20,)),
              Expanded(child: Image.asset('assets/icons/user.png',scale: 20,)),
            ],
          ),
        ),
      ),
    );
  }
}
