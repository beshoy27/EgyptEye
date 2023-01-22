import 'package:egypt_eye/models/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:egypt_eye/view/welcome_page_dart.dart';
import 'package:egypt_eye/models/custom_icon_button.dart';
import 'package:ionicons/ionicons.dart';
import 'package:egypt_eye/main.dart';
import 'package:egypt_eye/models/travel.dart';
import 'package:egypt_eye/view/detail_view.dart';
import 'package:flutter/material.dart';
import 'package:egypt_eye/models/travel.dart';
import 'package:egypt_eye/view/detail_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              Container(
                margin: const EdgeInsets.only(top: 16),
                height: size.height * .4,
                child: ListView.builder(
                    itemCount: _nearestTravelList.length,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DetailView(id: index)));
                          },
                          child: Stack(
                            children: [
                              ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(24),
                                  ),
                                  child: Image.asset(
                                      _nearestTravelList[index].imageUrl[0])),
                              Positioned(
                                bottom: 20,
                                left: 20,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(0, 0, 0, .5),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      )),
                                  child: Text(
                                    _nearestTravelList[index]
                                            .distance
                                            .toString() +
                                        "km away",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Discover Places',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff8f294f)),
                  ),
                ],
              ),
              TextButton(onPressed: () {}, child: const Text("View All"))
            ],
          ),
          const SizedBox(height: 10),
          const NearbyPlaces(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.bookmark_outline),
            label: "Bookmark",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.ticket_outline),
            label: "Ticket",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            label: "Profile",
          )
        ],
      ),
    );
  }
}
