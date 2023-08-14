import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

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
        padding: EdgeInsets.only(left: 40, right: 40, top: 40),
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Messages',
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 52,
                    width: 52,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Icon(Icons.arrow_back_ios, color: Colors.pink),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 48,
                width: 295,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      Text(
                        'Search',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Activities',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
