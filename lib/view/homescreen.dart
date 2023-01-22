// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
          child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.teal[300]),
            child: const Text('Menu'),
          ),
          ListTile(
              title: const Text('Edit Profile'), onTap: () => context.go('/path3')),
          ListTile(
              title: const Text('Settings'), onTap: () => context.go('/path4')),
              ListTile(
              title: const Text('Profile'), onTap: () => context.go('/path5')),
        ],
      )),
      appBar: AppBar(
        title: const Text('Welcome to Egypt Eye'),
      ),
      body: Container(
        margin: const EdgeInsets.only(bottom: 20),
        height: double.infinity,
        width: double.infinity,
        child: ListView(padding: const EdgeInsets.all(20), children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Explore!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
//sized box
          const SizedBox(
            height: 10,
          ),
          //search bar
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.teal[200],
                ),
                Text('search', style: TextStyle(color: Colors.teal[200]))
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

//how do you feel bar
          const Text(
            'How do you feel ?',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(
            height: 10,
          ),

// emoji faces
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //bored
              Container(
                padding: const EdgeInsets.all(3),
                child: ElevatedButton(
                  onPressed: () => (context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal[100],
                  ),
                  child: const Text(
                    '🤨',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),

              //happy
              Container(
                padding: const EdgeInsets.all(3),
                child: ElevatedButton(
                  onPressed: () => (context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal[100],
                  ),
                  child: const Text(
                    '😄',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
              //artistic
              Container(
                padding: const EdgeInsets.all(3),
                child: ElevatedButton(
                  onPressed: () => (context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal[100],
                  ),
                  child: const Text(
                    '🎨',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
              //celebrating
              Container(
                padding: const EdgeInsets.all(3),
                child: ElevatedButton(
                  onPressed: () => (context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal[100],
                  ),
                  child: const Text(
                    '🥳',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
//energetic
              Container(
                padding: const EdgeInsets.all(3),
                child: ElevatedButton(
                  onPressed: () => (context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal[100],
                  ),
                  child: const Text(
                    '🤸',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              )
            ],
          ),

          const SizedBox(
            height: 30,
          ),

          const Text(
            'Suggestions:',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(
            height: 30,
          ),

//suggessions
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.teal[300],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.favorite),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: const [
                        //title
                        Text(
                          'El-Barron Palace',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),

                        //subtitle
                        Text('Ticket price : 10 LE',
                            style: TextStyle(
                              fontSize: 14,
                            )),
                      ],
                    ),
                  ],
                ),
                const Icon(Icons.more_horiz)
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.teal[300],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.favorite),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: const [
                        //title
                        Text(
                          'YOGA studio',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),

                        //subtitle
                        Text('Ticket price : 500 LE',
                            style: TextStyle(
                              fontSize: 14,
                            )),
                      ],
                    ),
                  ],
                ),
                const Icon(Icons.more_horiz)
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.teal[300],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.favorite),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: const [
                        //title
                        Text(
                          'Dream Park',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),

                        //subtitle
                        Text('Ticket price : 300 LE',
                            style: TextStyle(
                              fontSize: 14,
                            )),
                      ],
                    ),
                  ],
                ),
                const Icon(Icons.more_horiz)
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.teal[300],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.favorite),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: const [
                        //title
                        Text(
                          'snow city',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),

                        //subtitle
                        Text('Ticket price : 350 LE',
                            style: TextStyle(
                              fontSize: 14,
                            )),
                      ],
                    ),
                  ],
                ),
                const Icon(Icons.more_horiz)
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.teal[300],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.favorite),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: const [
                        //title
                        Text(
                          'aqua Park',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),

                        //subtitle
                        Text('Ticket price : 300 LE',
                            style: TextStyle(
                              fontSize: 14,
                            )),
                      ],
                    ),
                  ],
                ),
                const Icon(Icons.more_horiz)
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),
        ]),
      ),
    );
  }
}

class user {}
