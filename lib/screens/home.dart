import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:crypto_currency/screens/price_selection.dart';
import 'package:crypto_currency/screens/profile.dart';
import 'package:crypto_currency/screens/settings.dart';
import 'package:crypto_currency/screens/welcome.dart';
import 'package:crypto_currency/shared/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<dynamic>? _pages;
  int _selectedPageIndex = 0;
  bool _isInit = true;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }
  @override
  void initState() {
   _pages = [
     {
       'page':const Welcome(),
       'title':"Welcome"
     },
     {
       'page':const PriceSelection(),
       'title':'Price selection'
     },
     {
     'page':const Settings(),
       'title':"Settings"
     },
     {
       'page':const Profile(),
       'title':"Profile"
     }
   ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: _pages![_selectedPageIndex]['page'],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        backgroundColor: const Color(0xFF704EF4),
        child: const Icon(Icons.add,color: Colors.white,),

      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        height: 99,
        backgroundColor: const Color(0xFF393A65),
          activeColor: Colors.white,
          inactiveColor: Colors.grey ,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          icons: const [
        Icons.home,
        Icons.timelapse_rounded,
        Icons.settings,
        CupertinoIcons.person
      ],
          activeIndex: _selectedPageIndex,
          onTap: (index){
            _selectPage(index);
          }),

    );
  }
}
