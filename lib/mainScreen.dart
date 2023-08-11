import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: ImageIcon(
              AssetImage('assets/images/nav1.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: ImageIcon(
              AssetImage('assets/images/nav2.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: ImageIcon(
              AssetImage('assets/images/nav3.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: ImageIcon(
              AssetImage('assets/images/nav4.png'),
            ),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.pink,
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Container(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "Discover",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Chicago,11",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(width: 20),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 52,
                  width: 52,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Image.asset('assets/images/setting-config.png')),
                ),
              ],
            ),
            SizedBox(height: 40),
            Container(
              height: 450,
              width: 295,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/photo1.png'))),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Text(
                        'Jessica parker,23',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'Professional modal',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      )
                    ]),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 39,
                  child: Image.asset('assets/images/close-small.png'),
                  backgroundColor: Colors.transparent,
                ),
                CircleAvatar(
                  radius: 49,
                  child: Image.asset('assets/images/Vector.png'),
                  backgroundColor: Color.fromRGBO(233, 64, 87, 1),
                ),
                CircleAvatar(
                    radius: 39,
                    child: Image.asset('assets/images/star.png'),
                    backgroundColor: Colors.transparent),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
