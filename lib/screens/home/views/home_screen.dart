import 'dart:math';

import 'package:expenses_tracker/screens/home/views/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../stats/stats.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  Color selectedColor = Colors.blueAccent;
  Color unSelectedColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
            top:Radius.circular(20)
        ),
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 3,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                    CupertinoIcons.home,
                    color: index == 0 ? selectedColor:unSelectedColor
                ),
                label: "Home",

            ),
            BottomNavigationBarItem(
                icon: Icon(
                    CupertinoIcons.graph_square_fill,
                    color: index == 1 ? selectedColor:unSelectedColor
                ),
              label: "stats"
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: () {  },
        shape: const CircleBorder(),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            Theme.of(context).colorScheme.tertiary,
            Theme.of(context).colorScheme.secondary,
            Theme.of(context).colorScheme.primary,
          ],
            transform: const GradientRotation(pi/4)
          )
        ),
          child: const Icon(
              CupertinoIcons.add,
            color: Colors.white,
            size: 30,
          )
      ),
      ),
    body: index == 0 ? const MainScreen(): const StatsScreen()
    );
  }
}
