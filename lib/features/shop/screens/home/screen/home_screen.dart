import 'package:finalyearproject/features/personalization/setting/setting_screen.dart';
import 'package:finalyearproject/features/shop/screens/favourite/favourite_screen.dart';
import 'package:finalyearproject/features/shop/screens/store/store.dart';
import 'package:finalyearproject/features/shop/screens/home/screen/home.dart';

import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<IconData> navigationIcons = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.store,
    FontAwesomeIcons.cartShopping,
    FontAwesomeIcons.solidUser
  ];
  List<String> iconName = ["home", "store", " Favourite", "profile"];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [Home(), Store(), FavouriteScreen(), SettingScreen()],
      ),
      bottomNavigationBar: Container(
        height: 82,
        margin: const EdgeInsets.all(0
            // left: 12, right: 12,
            //  bottom: 24
            ),
        padding: const EdgeInsets.all(0),
        decoration: const BoxDecoration(
          color: Colors.white,
          // border: Border(top: BorderSide()),
          // borderRadius: BorderRadius.all(Radius.circular(40)),
          // boxShadow: [
          //   BoxShadow(
          //       color: Colors.black26, blurRadius: 10, offset: Offset(2, 2))
          // ]
        ),
        child: Column(children: [
          Container(
            color: Colors.black,
            width: double.infinity,
            height: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < navigationIcons.length; i++) ...{
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = i;
                        });
                      },
                      child: Center(
                        child: FaIcon(
                          navigationIcons[i],
                          color: i == currentIndex
                              ? Colors.blueAccent
                              : Colors.black54,
                          size: i == currentIndex ? 20 : 15,
                        ),
                      ),
                    ),
                  )
                },
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < iconName.length; i++) ...{
                  Expanded(
                    child: Center(
                      child: Text(
                        iconName[i],
                        style: TextStyle(
                          color: i == currentIndex
                              ? Colors.blueAccent
                              : Colors.black54,
                          fontSize: i == currentIndex ? 15 : 12,
                        ),
                      ),
                    ),
                  ),
                },
              ]),
        ]),
      ),
    );
  }
}
