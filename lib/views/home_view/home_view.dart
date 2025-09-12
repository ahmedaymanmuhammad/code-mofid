import 'package:codemofidapplication/data/category_item.dart';
import 'package:codemofidapplication/views/my_wishlist_view/widgets/catogery_list.dart';
import 'package:flutter/material.dart';
import 'package:codemofidapplication/models/category_item.dart';

import '../../data/my_wishlist_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List categoriesTitles = [
    'All',
    'Web Development',
    'Mobile Application Development',
    'Desktop Application Development',
    'Artificial Intelligent',
    'Cyber Security',
    'Data Science',
  ];
  int selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 4),
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
              SizedBox(height: 12),
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
              SizedBox(height: 12),
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
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF4E6542),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              Container(
                height: 80,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    return SizedBox(
                      width: 140,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).primaryColor,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              category.iconPath,
                              scale: 15,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            category.title,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF676767),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 4),
                ),
              ),
              SizedBox(height: 12),
              Container(
                child: Row(
                  children: [
                    Text(
                      'Flash Sale',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              Container(
                height: 32,
                width: double.infinity,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(width: 16),
                  itemBuilder: (context, index) => CatogeryList(
                    title: categoriesTitles[index],
                    isSelected: selectedCategory == index,
                    onTap: () {
                      selectedCategory = index;
                      setState(() {});
                    },
                  ),
                  itemCount: categoriesTitles.length,
                ),
              ),
              SizedBox(height: 30),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: GridView.builder(
                    itemCount: allWishListItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 36,
                      crossAxisSpacing: 24,
                      childAspectRatio: 0.6,
                    ),
                    itemBuilder: (context, index) {
                      final item = allWishListItems[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  clipBehavior: Clip.antiAlias,
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Image.asset(
                                    item.image,
                                    fit: BoxFit.contain,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 50,
          padding: EdgeInsets.all(8),
          color: Colors.white,
          child: Row(
            children: [
              Expanded(child: Image.asset('assets/icons/home.png', scale: 20)),
              Expanded(child: Image.asset('assets/icons/cart.png', scale: 20)),
              Expanded(
                child: Image.asset('assets/icons/setting.png', scale: 20),
              ),
              Expanded(child: Image.asset('assets/icons/user.png', scale: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
