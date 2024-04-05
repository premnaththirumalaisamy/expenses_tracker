import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String,dynamic>> transactionData = [
  {
    'icon' : const FaIcon(FontAwesomeIcons.burger,color: Colors.white),
    'color' : Colors.deepOrangeAccent,
    'category' : 'Food',
    'totalAmount': '-₹45 ',
    'date': 'Today'
  },
  {
    'icon' : const FaIcon(FontAwesomeIcons.bagShopping,color: Colors.white),
    'color' : Colors.deepPurple,
    'category' : 'Shopping',
    'totalAmount': '-₹1810 ',
    'date': 'Today'
  },
  {
    'icon' : const FaIcon(FontAwesomeIcons.heartPulse,color: Colors.white),
    'color' : Colors.redAccent,
    'category' : 'Health',
    'totalAmount': '-₹700 ',
    'date': 'Today'
  },
  {
    'icon' : const FaIcon(FontAwesomeIcons.plane,color: Colors.white),
    'color' : Colors.tealAccent,
    'category' : 'Travel',
    'totalAmount': '-₹450',
    'date': 'Today'
  }
];