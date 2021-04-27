import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;
  String name = "سبحان الله";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_counter == 26) {
      name = "الحمد لله";
    }
    if (_counter == 51) {
      name = "لا إله إلا الله";
    }
    if (_counter == 76) {
      name = "الله اكبر";
    }
    if (_counter == 101) {
      name = "استغفر الله";
    }
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "♥ السيرة الذاتية ♥",
          style: TextStyle(
            fontFamily: 'ElMessiri',
          ),
        )),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.amber,
              Colors.pink,
            ],
          )),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/doh.jpg',
                          ),
                          fit: BoxFit.cover),
                      color: Colors.amber,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.pink,
                            blurRadius: 0,
                            spreadRadius: 2,
                            offset: Offset(1, 6)
                            //blurRadius: 5,
                            ),
                        BoxShadow(
                          color: Colors.amber,
                          spreadRadius: 3,
                          //blurRadius: 5,
                        )
                      ]),
                  width: 200,
                  height: 200,
                  child: null),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    gradient:
                        LinearGradient(colors: [Colors.amber, Colors.pink])),
                child: Center(
                    child: textName(
                        name: "الاسم",
                        colors: Colors.white,
                        colorsS: Colors.black,
                        fontS: 26))),
            textName(
              name: "ضحا",
              colors: Colors.orange,
              colorsS: Colors.black,
              fontS: 40,
            ),
            Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    gradient:
                        LinearGradient(colors: [Colors.amber, Colors.pink])),
                child: Center(
                    child: textName(
                        name: "المهارة",
                        colors: Colors.white,
                        colorsS: Colors.black,
                        fontS: 26))),
            textName(
              name: "فنانة ذات ذوق رفيع",
              colors: Colors.orange,
              colorsS: Colors.black,
              fontS: 40,
            ),
            Text(
              "سبحة الكترونية",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontFamily: 'Mada',
                  fontWeight: FontWeight.bold),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.90,
                height: MediaQuery.of(context).size.height * 0.26,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.green[900]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.50,
                      padding: EdgeInsets.only(left: 10, right: 10),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(
                        child: Text(
                          "$name",
                          style: TextStyle(
                              fontFamily: 'Mada',
                              color: Colors.green[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textDirection: TextDirection.rtl,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey, offset: Offset(3, 4))
                              ]),
                          child: FlatButton(
                            height: 130,
                            minWidth: 130,
                            splashColor: Colors.amber,
                            color: Colors.green[900],
                            onPressed: _incrementCounter,
                            child: Text(
                              "اضغط",
                              style: TextStyle(
                                  fontFamily: 'Mada',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 4),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Column(
                          children: [
                            Text(
                              'عدد التسبيحات',
                              style: TextStyle(
                                  fontFamily: 'Mada',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white),
                            ),
                            Text(
                              "$_counter",
                              style: TextStyle(
                                  fontFamily: 'Mada',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      //floatingActionButton:
    );
  }
}

Widget textName({String name, Color colors, Color colorsS, double fontS}) {
  return Text(
    name,
    style: TextStyle(
        color: colors,
        fontFamily: 'ElMessiri',
        fontSize: fontS,
        shadows: [Shadow(color: colorsS, offset: Offset(1, 2))]),
  );
}
