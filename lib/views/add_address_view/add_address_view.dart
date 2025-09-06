import 'package:flutter/material.dart';

class AddAddressView extends StatelessWidget {
  const AddAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        title: Text('Add Address', textAlign: TextAlign.center),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(height: 36),
              TextFormField(decoration: InputDecoration(labelText: 'Title',labelStyle: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF000000)
              ))),
              SizedBox(height: 32),
              TextFormField(decoration: InputDecoration(labelText: 'Address',labelStyle: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF000000)
              ))),
              SizedBox(height: 32),

              TextFormField(decoration: InputDecoration(labelText: 'Building No.',labelStyle: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF000000)
              ))),
              SizedBox(height: 32),

              TextFormField(decoration: InputDecoration(labelText: 'Floor No.',labelStyle: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF000000)
              ))),
              SizedBox(height: 32),

              TextFormField(decoration: InputDecoration(labelText: 'Apartment No.',labelStyle: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF000000)
              ))),
              SizedBox(height: 127),
              Row(
                children: [
                  Expanded(
                    child: FilledButton(
                      onPressed: () {},
                      child: Text(
                        'Save',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
