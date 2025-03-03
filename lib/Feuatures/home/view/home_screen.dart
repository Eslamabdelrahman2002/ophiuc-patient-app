import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/Core/utils/assets_images.dart';
import 'package:project_app/Feuatures/chat/view/chat_screen.dart';
import 'package:project_app/Feuatures/profile/view/profile_screen.dart';
import 'package:project_app/Feuatures/scan/view/scan_screen.dart';
import 'package:project_app/Feuatures/stats/view/states_screen.dart';
import 'home_body.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Widget> pages = [
     HomeBody(),
    const ChatScreen(),
     ScanScreen(),
    const StatesScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.background),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:  HomeBody(),
        bottomNavigationBar: SizedBox(
          height: 120,
          child: BottomAppBar(
            color: Colors.transparent,
            elevation: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.home),
                      onPressed: () => navigation(0),
                    ),
                    const Text('Home'),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chat),
                      onPressed: () => navigation(1),
                    ),
                    const Text('Chat'),
                  ],
                ),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: const Color(0xFF3BBA8A).withOpacity(.7),
                    borderRadius: BorderRadius.circular(70),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.qr_code_scanner, size: 30),
                        onPressed: () => navigation(2),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.bar_chart),
                      onPressed: () => navigation(3),
                    ),
                    const Text('Stats'),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.person_outline_outlined),
                      onPressed: () => navigation(4),
                    ),
                    const Text('Profile'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void navigation(int index) {
    Get.to(
          () => pages[index],
      transition: Transition.fade,
      duration: const Duration(milliseconds: 300),
    );
  }
}