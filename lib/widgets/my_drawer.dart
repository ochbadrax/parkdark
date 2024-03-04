import 'package:flutter/material.dart';
import 'package:parkdark/mainScreens/home_screen.dart';
import 'package:parkdark/mainScreens/location.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 25, bottom: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "Park Dark",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Lobster"),
                ),
                const SizedBox(
                  height: 12,
                ),
                Column(
                  children: [
                    const Divider(
                      height: 10,
                      color: Colors.grey,
                      thickness: 2,
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Нүүр хуудас",
                        style: TextStyle(fontFamily: "Oswald-Regular"),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (c) => const HomeScreen()));
                      },
                    ),
                    const Divider(
                      height: 10,
                      color: Colors.grey,
                      thickness: 2,
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.location_city,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Байршил",
                        style: TextStyle(fontFamily: "Oswald-Regular"),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (c) => const Location()));
                      },
                    ),
                    const Divider(
                      height: 10,
                      color: Colors.grey,
                      thickness: 2,
                    ),
                    ListTile(
                        leading: const Icon(
                          Icons.call,
                          color: Colors.white,
                        ),
                        title: const Text(
                          "Холбоо барих",
                          style: TextStyle(fontFamily: "Oswald-Regular"),
                        ),
                        onTap: () => showModalBottomSheet(
                            context: context,
                            builder: (context) => buildSheet())),
                    const Divider(
                      height: 10,
                      color: Colors.grey,
                      thickness: 2,
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.file_copy,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Танилцуулга",
                        style: TextStyle(fontFamily: "Oswald-Regular"),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (c) => const HomeScreen()));
                      },
                    ),
                    const Divider(
                      height: 10,
                      color: Colors.grey,
                      thickness: 2,
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Системээс гарах",
                        style: TextStyle(fontFamily: "Oswald-Regular"),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (c) => const HomeScreen()));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildSheet() => Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 18,
      ),
      child: Column(
        children: [
          const Text(
            "Холбоо барих",
            style: TextStyle(fontSize: 35, fontFamily: "Lobster"),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Icon(
                Icons.call,
                color: Colors.grey,
              ),
              SizedBox(
                width: 12.0,
              ),
              Column(
                children: [
                  Text(
                    "7037 6061",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: "Oswald-Regular"
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Row(
            children: [
              Icon(
                Icons.mail,
                color: Colors.grey,
              ),
              SizedBox(
                width: 12.0,
              ),
              Column(
                children: [
                  Text(
                    "dhsahvreelen@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: "Oswald-Regular"
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Row(
            children: [
              Icon(
                Icons.web,
                color: Colors.grey,
              ),
              SizedBox(
                width: 12.0,
              ),
              Column(
                children: [
                  Text(
                    "https://www.parkdarkhan.mn",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: "Oswald-Regular"
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Row(
            children: [
              Icon(
                Icons.location_on_rounded,
                color: Colors.grey,
              ),
              SizedBox(
                width: 12.0,
              ),
              Column(
                children: [
                  Text(
                    "Дархан-Уул аймаг,\nДархан сум, 14-р баг,\nМиний Монгол цэцэрлэгт хүрээлэн",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: "Oswald-Regular"
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            children: [
              const Icon(
                Icons.facebook,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 12.0,
              ),
              Column(
                children: [
                  Text(
                    "Дархан хотын\nсоёл амралтын хүрээлэн".toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: "Oswald-Regular"
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 55.0,
          ),
        ],
      ),
    );
