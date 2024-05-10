import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 10.0),
            child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 25,
                                height: 25,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey
                                ),
                              ),
                              const Icon(
                                CupertinoIcons.arrow_left,
                                color: Colors.white,
                                size: 15,
                              )
                            ],
                          ),
                          const SizedBox(width: 18),
                          Text(
                            'Transactions',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.outline
                            ),
                          ),
                        ],
                      ),
                      const Icon(CupertinoIcons.slider_horizontal_3)
                    ],
                  )
                ]
        )
        )
    );
  }
}
