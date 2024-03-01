import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.nameListName,
    required this.kesibi,
    required this.phone,
    required this.email,
  });

  final String nameListName;
  final String kesibi;
  final String phone;
  final String email;
  @override
  build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056c5c),
      appBar: AppBar(
        title: const Text('Тапшырма 4'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 110,
              backgroundImage: AssetImage('assets/images/PHOTO.jpg'),
            ),
            Text(
              nameListName,
              style: const TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              kesibi,
              style: const TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            const Divider(
              indent: 55,
              endIndent: 55,
              height: 0,
              thickness: 2,
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 60,
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.phone_outlined,
                    color: Color(0xff056C5C),
                    size: 35,
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Text(
                    phone,
                    style: const TextStyle(
                      color: Color(0xff056c5c),
                      fontSize: 25,
                      //fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 60,
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.email_outlined,
                    color: Color(0xff056C5C),
                    size: 35,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    email,
                    style: const TextStyle(
                      color: Color(0xff056c5c),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
