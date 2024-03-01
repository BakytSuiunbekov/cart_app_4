import 'package:cart_app_4/home_page.dart';
import 'package:flutter/material.dart';

class InsertDataPage extends StatelessWidget {
  InsertDataPage({super.key});

  final nameListNameCtl = TextEditingController();
  final kesibiCtl = TextEditingController();
  final phoneCtl = TextEditingController();
  final emailCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InsertDataPage'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              children: [
                TextFormField(
                  controller: nameListNameCtl,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff056c5c))),
                    border: OutlineInputBorder(),
                    labelText: 'Аты-жону',
                    labelStyle: TextStyle(
                      fontSize: 22,
                      color: Color(0xff056c5c),
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                TextFormField(
                  controller: kesibiCtl,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff056c5c))),
                    border: OutlineInputBorder(),
                    hintText: ('Кесиби'),
                    hintStyle: TextStyle(
                      fontSize: 19,
                      color: Color(0xff056c5c),
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                TextFormField(
                  controller: phoneCtl,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff056c5c),
                      ),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Тел:',
                    labelStyle: TextStyle(
                      fontSize: 22,
                      color: Color(0xff056c5c),
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                TextFormField(
                  controller: emailCtl,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff056c5c),
                      ),
                    ),
                    border: OutlineInputBorder(),
                    hintText: ('Еmail:'),
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Color(0xff056c5c),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: 160,
                  height: 47,
                  child: ElevatedButton(
                      onPressed: () {
                        if (nameListNameCtl.text.isNotEmpty &&
                            kesibiCtl.text.isNotEmpty &&
                            phoneCtl.text.isNotEmpty &&
                            emailCtl.text.isNotEmpty) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(
                                nameListName: nameListNameCtl.text,
                                kesibi: kesibiCtl.text,
                                phone: phoneCtl.text,
                                email: emailCtl.text,
                              ),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Маалыматтарды толук жазыныз !!!'),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff056c5c),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          )),
                      child: const Text(
                        'сактоо',
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
