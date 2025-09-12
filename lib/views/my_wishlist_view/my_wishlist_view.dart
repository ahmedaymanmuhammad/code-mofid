import 'package:codemofidapplication/views/my_wishlist_view/widgets/catogery_list.dart';
import 'package:flutter/material.dart';
import 'package:codemofidapplication/models/my_wishlist_item.dart';
import 'package:codemofidapplication/data/my_wishlist_item.dart';

import '../../data/my_wishlist_item.dart';
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
                            Positioned(
                              top: 6,
                              right: 6,
                              child: Container(
                                alignment: AlignmentDirectional.center,
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFEEEEEE),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      item.isFavorite = !item.isFavorite;
                                    });
                                  },
                                  child: Icon(
                                    Icons.favorite,
                                    color: item.isFavorite?Theme.of(context).primaryColor:Colors.grey
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        child: Row(
                          children: [
                            Text(item.title,style:
                              TextStyle(
                                fontSize: 14,fontWeight: FontWeight.w500
                              ),),
                            Spacer(),
                            Icon(Icons.star,color: Colors.amberAccent,),
                            Text('${item.rating}',style: TextStyle(
                                fontSize: 12,fontWeight: FontWeight.w600,
                                color: Color(0xFF979696)
                            ),),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('\$${item.price}',style: TextStyle(
                          fontSize: 12,fontWeight: FontWeight.w600,
                          color: Color(0xFFAB94A6)
                        ),),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
