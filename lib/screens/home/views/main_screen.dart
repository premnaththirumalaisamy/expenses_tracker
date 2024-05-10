import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expenses_tracker/data/data.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10.0),
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
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.yellow[700]
                          ),
                        ),
                        Icon(
                            CupertinoIcons.person_fill,
                            color: Colors.yellow[800],
                        )
                      ],
        ),
                    const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome!',
                            style: TextStyle(
                                fontSize: 12,
                              color: Theme.of(context).colorScheme.outline
                            ),
                          ),
                          const Text(
                            'Premnath',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
                const Icon(CupertinoIcons.settings)
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width/2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                shape: BoxShape.rectangle,
                gradient: LinearGradient(colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.tertiary,
                ],
                    transform: const GradientRotation(pi/4)
                ),
              boxShadow: [BoxShadow(
                blurRadius: 2,
                offset: const Offset(5, 5),
                color: Colors.grey.shade400
              )]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                      'Total Balance',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  const SizedBox(height: 12,),
                  const Text(
                      '₹ 4,800.00',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 20),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white30
                            ),
                            child: const Icon(
                              CupertinoIcons.down_arrow,
                              color: Colors.greenAccent,
                              size: 12,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Income',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white
                                ),
                              ),
                              Text(
                                '₹ 2,500.00',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white30
                            ),
                            child: const Icon(
                              CupertinoIcons.up_arrow,
                              color: Colors.redAccent,
                              size: 12,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Expenses',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white
                                ),
                              ),
                              Text(
                                '₹ 2,500.00',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    'Transactions',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onBackground
                    ),
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600
                      ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                itemCount: transactionData.length,
                  itemBuilder: (context,int i){
                    return Padding(
                      padding: const EdgeInsets.only(bottom:16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.white70
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children:[
                                      Container(
                                        width:50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: transactionData[i]['color'],
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      transactionData[i]['icon']
                                    ]
                                  ),
                                  const SizedBox(width: 12,),
                                   Text(
                                     transactionData[i]['category'],
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Theme.of(context).colorScheme.onBackground,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    transactionData[i]['totalAmount'],
                                    style: TextStyle(
                                        fontSize: 14,
                                        color:Theme.of(context).colorScheme.onBackground,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  Text(
                                    transactionData[i]['date'],
                                    style: TextStyle(
                                        fontSize: 12,
                                        color:Colors.grey.shade600,
                                        fontWeight: FontWeight.w400
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
