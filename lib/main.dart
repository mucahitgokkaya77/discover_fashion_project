import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:moda_project/detay.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(
                Icons.more,
                color: Colors.grey,
                size: 16,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.grey,
                size: 20,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.navigation,
                color: Colors.black,
                size: 16,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.grey,
                size: 16,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(3),
          child: Text(
            "Discover Fashion",
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: [
          Container(
            height: 140,
            width: double.infinity,
            color: Colors.transparent,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10),
              children: [
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(width: 30),
                listeElemani('assets/model2.jpeg', 'assets/chloelogo.png'),
                SizedBox(width: 30),
                listeElemani('assets/model3.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(width: 30),
                listeElemani('assets/model4.jpg', 'assets/mklogo.png'),
                SizedBox(width: 30),
                listeElemani('assets/model2.jpeg', 'assets/chloelogo.png'),
                SizedBox(width: 30),
                listeElemani('assets/model3.jpeg', 'assets/chanellogo.jpg'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              color: Colors.white,
              child: Container(
                height: 480,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage('assets/model1.jpeg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Daisy",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "34 mins ago ",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 10,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                          size: 21,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "This official website features a ribbed knit zipper jacket that is"
                      "modern and stylish. It looks very temparament and is recommend to friends",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          color: Colors.grey),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        InkWell(
                          child: Hero(
                            child: Container(
                              height: 210,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage('assets/modelgrid1.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            tag: 'assets/modelgrid1.jpeg',
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    Detay(imgPath: 'assets/modelgrid1.jpeg')));
                          },
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            InkWell(
                              child: Hero(
                                child: Container(
                                  height: 100,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/modelgrid2.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                tag: 'assets/modelgrid2.jpeg',
                              ),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath: 'assets/modelgrid2.jpeg')));
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              child: Hero(
                                child: Container(
                                  height: 100,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/modelgrid3.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                tag: 'assets/modelgrid3.jpeg',
                              ),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath: 'assets/modelgrid3.jpeg')));
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              "LOUIS VUITTON",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              "CHLOE",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Divider(),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(
                          Icons.reply,
                          color: Colors.brown.withOpacity(0.4),
                          size: 25,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "1.7k",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.brown.withOpacity(0.4),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        Icon(
                          Icons.comment,
                          color: Colors.brown.withOpacity(0.4),
                          size: 22,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "850",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.brown.withOpacity(0.4),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 235,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 22,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "4.8k",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    color: Colors.brown.withOpacity(0.4),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  listeElemani(String s, String t) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(image: AssetImage(s), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image:
                      DecorationImage(image: AssetImage(t), fit: BoxFit.cover),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 26,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.brown.shade500),
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 14, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
