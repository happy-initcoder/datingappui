import 'package:flutter/material.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'package:swipe_cards/swipe_cards.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<SwipeItem> _swipeItems = <SwipeItem>[];
  MatchEngine? _matchEngine;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  List<String> _names = [
    "assets/images/photo1.png",
    "assets/images/photo2.png",
    "assets/images/photo1.png",
    "assets/images/photo2.png",
    "assets/images/photo1.png",
    "assets/images/photo2.png",
    "assets/images/photo1.png",
    "assets/images/photo2.png",
    "assets/images/photo1.png",
  ];
  List<Color> _colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.grey,
    Colors.purple,
    Colors.pink
  ];

  @override
  void initState() {
    for (int i = 0; i < _names.length; i++) {
      _swipeItems.add(SwipeItem(
          content: (text: _names[i],),
          likeAction: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Liked ${_names[i]}"),
              duration: Duration(milliseconds: 500),
            ));
          },
          nopeAction: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Nope ${_names[i]}"),
              duration: Duration(milliseconds: 500),
            ));
          },
          superlikeAction: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Superliked ${_names[i]}"),
              duration: Duration(milliseconds: 500),
            ));
          },
          onSlideUpdate: (SlideRegion? region) async {
            print("Region $region");
          }));
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
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
            height: MediaQuery.of(context).size.height,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Container(
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
                  ),
                  Column(
                    children: [
                      Text(
                        "Discover",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Chicago,11",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      )
                    ],
                  ),
                  SizedBox(width: 50),
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
              Stack(
                children: [
                  Container(
                    height: 450,
                    width: 295,
                    child: SwipeCards(
                      itemChanged: (SwipeItem item, int index) {
                        print("item: ${item.content.text}, index: $index");
                      },
                      matchEngine: _matchEngine!,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 450,
                          width: 295,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(_names[index]))),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 15, bottom: 15),
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
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  )
                                ]),
                          ),
                        );
                      },
                      onStackFinished: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Stack Finished"),
                          duration: Duration(milliseconds: 500),
                        ));
                      },
                      leftSwipeAllowed: true,
                      rightSwipeAllowed: true,
                      upSwipeAllowed: true,
                      fillSpace: true,
                      likeTag: Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 450 / 2.5, left: 50),
                          child: CircleAvatar(
                              radius: 39,
                              child: Transform.rotate(
                                angle: -50,
                                child: Image.asset(
                                  'assets/images/Vector.png',
                                  color: Color.fromRGBO(233, 64, 87, 1),
                                ),
                              ),
                              backgroundColor: Colors.white),
                        ),
                      ),
                      nopeTag: Padding(
                        padding: EdgeInsets.only(top: 450 / 2.5, right: 50),
                        child: CircleAvatar(
                          radius: 39,
                          child: Image.asset('assets/images/close-small.png'),
                          backgroundColor: Colors.white,
                        ),
                      ),
                      superLikeTag: Center(
                        child: CircleAvatar(
                          radius: 39,
                          child: Image.asset('assets/images/Vector.png'),
                          backgroundColor: Color.fromRGBO(233, 64, 87, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 39,
                    child: GestureDetector(
                        onTap: () {
                          _matchEngine!.currentItem?.nope();
                        },
                        child: Image.asset('assets/images/close-small.png')),
                    backgroundColor: Colors.transparent,
                  ),
                  CircleAvatar(
                    radius: 49,
                    child: GestureDetector(
                        onTap: () {
                          _matchEngine!.currentItem?.superLike();
                        },
                        child: Image.asset('assets/images/Vector.png')),
                    backgroundColor: Color.fromRGBO(233, 64, 87, 1),
                  ),
                  CircleAvatar(
                      radius: 39,
                      child: GestureDetector(
                          onTap: () {
                            _matchEngine!.currentItem?.like();
                          },
                          child: Image.asset('assets/images/star.png')),
                      backgroundColor: Colors.transparent),
                ],
              )
            ]),
          ),
        ));
  }
}
