import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 182, 182, 182),
          centerTitle: false,
          title: const Text("Home"),
          leading: const Icon(
            Icons.home,
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
          color: const Color.fromARGB(255, 207, 207, 207),
          child: Column(children: [
            const SizedBox(
              height: 75,
            ),
            const CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/id/79/200/300'),
              radius: 75,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 165, 165, 165), width: 0.5),
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
              child: const Text(
                'Luluah Aldakhil',
                style: TextStyle(color: Colors.black, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Fixed
          backgroundColor: const Color.fromARGB(255, 182, 182, 182), // <-- This works for fixed

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined),
              label: 'Account',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Support',
            ),
          ],
          fixedColor: Colors.black,
        ));
  }
}
