import 'package:flutter/material.dart';

class GalaryView extends StatefulWidget {
  const GalaryView({super.key});

  @override
  State<GalaryView> createState() => _GalaryViewState();
}

class _GalaryViewState extends State<GalaryView> {
  @override
  Widget build(BuildContext context) {
    int imageIndex = 0;
    List imagelist = [
      'assets/images/g1.png',
      'assets/images/g2.png',
      'assets/images/g3.png',
      'assets/images/g4.png',
      'assets/images/g5.png'
    ];
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        child: Column(children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 40, left: 40),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
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
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 500,
            width: size.width,
            child: PageView.builder(
                itemCount: imagelist.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 500,
                    width: size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imagelist[index]),
                            fit: BoxFit.cover)),
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: SizedBox(
              height: 100,
              width: size.width,
              child: ListView.builder(
                  itemCount: imagelist.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            index = imageIndex;
                          });
                        },
                        child: Container(
                          height: 54,
                          width: 54,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(imagelist[index]),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          )
        ]),
      ),
    );
  }
}
