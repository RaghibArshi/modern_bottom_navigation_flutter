import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFE6C7),
      appBar: AppBar(
        backgroundColor: Color(0XFF454545),
        centerTitle: true,
        title: Text(
          'Bottom Navigation Bar',
          style: TextStyle(
              color: Color(0XFFFFA559),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0XFF454545),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
          child: GNav(
            backgroundColor: Color(0XFF454545),
            color: Color(0XFFFF6000),
            activeColor: Color(0XFFFFA559),
            tabBackgroundColor: Color(0XFFFFE6C7),
            tabBackgroundGradient: LinearGradient(
              colors: [Color(0XFF454545), Color(0XFFFF6000)]
            ),
            gap: 6.0,
            padding: EdgeInsets.all(10.0),
            // tabBorder: Border.all(color: Color(0XFFFF6000)),
            // tabActiveBorder: Border.all(color: Color(0XFFFFE6C7)),
            // tabShadow: [BoxShadow(color: Color(0XFFFFE6C7), blurRadius: 8)],
            // tabBorderRadius: 10.0,
            tabs: [
              GButton(text: 'Home', icon: Icons.home),
              GButton(text: 'Category', icon: Icons.category),
              GButton(text: 'Cart', icon: Icons.shopping_cart),
              GButton(text: 'Profile', icon: Icons.person),
            ],
            onTabChange: (index){
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }

  // Define your pages or sections here
  final List<Widget> _pages = [
    // Replace these with your actual pages or widgets
    Container(color: Color(0XFF454545), child: Center(child: Icon(Icons.home, size: 100.0, color: Color(0XFFFFE6C7),))),
    Container(color: Color(0XFF454545), child: Center(child: Icon(Icons.category, size: 100.0, color: Color(0XFFFFE6C7),))),
    Container(color: Color(0XFF454545), child: Center(child: Icon(Icons.shopping_cart, size: 100.0, color: Color(0XFFFFE6C7),))),
    Container(color: Color(0XFF454545), child: Center(child: Icon(Icons.person, size: 100.0, color: Color(0XFFFFE6C7),))),
  ];

}
