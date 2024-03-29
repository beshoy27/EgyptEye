// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            context.go('/path2');
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(children: [
          const Text(
            "Settings",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(children: const [
            Icon(
              Icons.settings,
              color: Colors.green,
            ),
            SizedBox(
              width: 8,
            ),
            Text("General Settings",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
          ]),
          const Divider(
            height: 15,
            thickness: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        title: const Text('Change password'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text("option 1"),
                          ],
                        ),
                        actions: [
                          FloatingActionButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Close"),
                          )
                        ]);
                  });
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Change Pasword",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700],
                      )),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  )
                ]),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        title: const Text('Privacy & Policy'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text("privacy and policy data text"),
                          ],
                        ),
                        actions: [
                          FloatingActionButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Close"),
                          )
                        ]);
                  });
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Favourites",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700],
                      )),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  )
                ]),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        title: const Text('privacy and policy'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text("privacy and policy here"),
                          ],
                        ),
                        actions: [
                          FloatingActionButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Close"),
                          )
                        ]);
                  });
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Privacy & Policy",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700],
                      )),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  )
                ]),
          )
        ]),
      ),
    );
  }
}
