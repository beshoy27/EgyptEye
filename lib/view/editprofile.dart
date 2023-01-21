import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfile> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 1,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.green,
            ),
            onPressed: () {
              context.go('/path5');
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: Colors.green,
              ),
              onPressed: () {
                context.go('/path4');
              },
            )
          ],
        ),
        body: Container(
            padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
            child: GestureDetector(
              child: ListView(children: [
                const Text(
                  "Edit Profile",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Stack(children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10),
                            ),
                          ],
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/avatart-1.png'),
                          )),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                          child: const Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ))
                  ]),
                ),
                const SizedBox(
                  height: 35,
                ),
                const TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 3),
                      labelText: 'Full Name',
                      border: InputBorder.none,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: 'Name',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
                const SizedBox(
                  height: 35,
                ),
                const TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 3),
                      labelText: 'E-mail',
                      border: InputBorder.none,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: 'example@gmail.com',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
                const SizedBox(
                  height: 35,
                ),
                TextField(
                  obscureText: showPassword,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                          icon: const Icon(Icons.remove_red_eye,
                              color: Colors.black)),
                      contentPadding: EdgeInsets.only(bottom: 3),
                      labelText: 'Password',
                      border: InputBorder.none,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: '********',
                      hintStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
                const SizedBox(
                  height: 35,
                ),
                const TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 3),
                      labelText: 'Location',
                      border: InputBorder.none,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: 'Cairo, Egypt',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.grey,
                        shadowColor: Colors.grey,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        textStyle: const TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () => context.go('/path5'),
                      child: const Text("Cancel"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shadowColor: Colors.grey,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        textStyle: const TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.white),
                      ),
                      child: const Text("Save"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
              ]),
            )));
  }
}
