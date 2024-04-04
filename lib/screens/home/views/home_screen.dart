import 'dart:math';

import 'package:expenses_tracker/screens/home/views/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
            top:Radius.circular(20)
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 3,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.graph_square_fill),
              label: "stats"
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: () {  },
        shape: CircleBorder(),
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
    body: new MainScreen()
    );
  }
}
