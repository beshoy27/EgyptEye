import 'package:egypt_eye/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:egypt_eye/view/welcome_page_dart.dart';
import 'package:egypt_eye/widgets/custom_icon_button.dart';
import 'package:egypt_eye/widgets/location_card.dart';
import 'package:egypt_eye/widgets/nearby_places.dart';
import 'package:egypt_eye/widgets/recommended_places.dart';
import 'package:egypt_eye/widgets/tourist_places.dart';
import 'package:ionicons/ionicons.dart';
import 'package:egypt_eye/main.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          DrawerHeader(
            child: Text('Menu'),
            decoration: BoxDecoration(color: Color.fromARGB(255, 27, 174, 243)),
          ),
          // ListTile(
          //     title: const Text('Edit Profile'), onTap: () => context.go('/path3')),
          ListTile(
              title: const Text('Profile'), onTap: () => context.go('/path5')),
          // ListTile(
          //     title: const Text('Favorites'), onTap: () => context.go('/path5')),
          ListTile(
              title: const Text('Settings'), onTap: () => context.go('/path4')),
          ListTile(
              title: const Text('Sign out'), onTap: () => context.go('/path1')),
        ],
      )),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hello"),
            Text(
              "Beshoy",
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        actions: const [
          CustomIconButton(
            icon: Icon(Ionicons.search_outline),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, right: 12),
            child: CustomIconButton(
              icon: Icon(Ionicons.notifications_outline),
            ),
          ),
        ],
      ),
      body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(14),
          children: [
            // LOCATION CARD
            const LocationCard(),
            const SizedBox(
              height: 15,
            ),
            const TouristPlaces(),
            // CATEGORIES
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommendation",
                  style: Theme.of(context).textTheme.headline6,
                ),
                TextButton(onPressed: () {}, child: const Text("View All"))
              ],
            ),
            const SizedBox(height: 10),
            const RecommendedPlaces(),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nearby From You",
                  style: Theme.of(context).textTheme.headline6,
                ),
                TextButton(onPressed: () {}, child: const Text("View All"))
              ],
            ),
            const SizedBox(height: 10),
            const NearbyPlaces(),
          ]),
    );
  }
}
