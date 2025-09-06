import 'package:codemofidapplication/views/my_wishlist_view/widgets/catogery_list.dart';
import 'package:flutter/material.dart';

class MyWishlistView extends StatefulWidget {
  const MyWishlistView({super.key});

  @override
  State<MyWishlistView> createState() => _MyWishlistViewState();
}

class _MyWishlistViewState extends State<MyWishlistView> {

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
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        title: Text('My Wishlist'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 16),
          Container(
            height: 32,
            width: double.infinity,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 16),
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
          SizedBox(height: 32),
          Expanded(child: Container(color: Colors.amber)),
        ],
      ),
    );
  }
}
