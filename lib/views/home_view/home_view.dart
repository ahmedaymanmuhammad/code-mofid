import 'package:codemofidapplication/data/category_item.dart';
import 'package:codemofidapplication/views/my_wishlist_view/widgets/catogery_list.dart';
import 'package:flutter/material.dart';
import 'package:codemofidapplication/models/category_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                child: Row(
                  children: [
                    Text(
                      'Hello, Ahmed',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xFFEEEEEE),
                        ),
                        width: 40,
                        height: 40,
                        child: Image.asset(
                          'assets/icons/notification.png',
                          scale: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(24),
                width: double.infinity,
                height: 180,
                color: Colors.white,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'New Offers!',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Discount 50% for \nthe first members',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFA1A8B0),
                          ),
                        ),
                        Spacer(),
                        FilledButton(
                          onPressed: () {},
                          child: Text(
                            'Enroll Now',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset('assets/images/offers_image.jpg'),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                child: Row(
                  children: [
                    Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      child: Text('See All',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF4E6542)
                        ),),
                    ),
                  ],
                ),
              ),
              ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(category.iconPath),
                      ),
                      SizedBox(height: 8),
                      Text(category.title),
                    ],
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
