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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Travel> _travelList = Travel.getTravelItems();
    List<Travel> _nearestTravelList = Travel.getNearestItems();

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: 'Discover',
                    style: const TextStyle(
                        color: Color(0xff8f294f), fontSize: 32, height: 1.3),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' the Best Places to Travel',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(.8)))
                    ]),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Nearest to you',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
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
              Container(
                margin: EdgeInsets.only(top: 16),
                height: size.height * .4,
                child: ListView.builder(
                    itemCount: _travelList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DetailView(id: index)));
                          },
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                child: Image.asset(
                                  _travelList[index].imageUrl[1],
                                  fit: BoxFit.fill,
                                  height: 60.0,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _travelList[index].name,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          _travelList[index].location,
                                          style: const TextStyle(
                                            fontSize: 16.0,
                                            color: Color(0xff686771),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/star.png",
                                              width: 30,
                                            ),
                                            Text(
                                              _travelList[index]
                                                  .rating
                                                  .toString(),
                                              style: const TextStyle(
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
