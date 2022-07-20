import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';


class GridHeader extends StatefulWidget {
  @override
  _GridHeaderState createState() => _GridHeaderState();
}

class _GridHeaderState extends State<GridHeader> {

  /*List<String> listHeader = ['Poker','Slots','Casino','Sports',];
  List<String> listTitle = ['title1','title2',];*/
  List<Map> categories = [
    {'name': 'PRAGMATIC', 'iconPath': 'assets/images/info.png'},
    {'name': 'JOKER', 'iconPath': 'assets/images/contract.png'},
    {'name': 'GAMING', 'iconPath': 'assets/images/arroba.png'},
    {'name': 'ALBET', 'iconPath': 'assets/images/placeholder.png'},
    {'name': 'SBO SPORTS', 'iconPath': 'assets/images/info.png'},
    {'name': 'UNITED GAMING', 'iconPath': 'assets/images/house.png'},
    {'name': 'SABA SPORTS','iconPath': 'assets/images/telephone.png'},
    {'name': 'MICRO GAMIING', 'iconPath': 'assets/images/mail.png'},
    {'name': 'P2P','iconPath': 'assets/images/assistance.png'},
    {'name': 'GAMING', 'iconPath': 'assets/images/right-arrow.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       backgroundColor: Colors.grey.shade600,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
              onPressed: (){},  icon: Icon(Icons.menu),color: Colors.white),
          title: Text('MSC PLAY',style: TextStyle(color: Colors.white),),
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: (){},  icon: Icon(Icons.person),color: Colors.white,),
                new GestureDetector(
                  onTap: () {},
                  child: new Text("LOGIN"),)],
            )],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10,10,0,10),
              child: Text(
                "Poker",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),),
            ), Container(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,//categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                           child: Image.asset(
                              categories[index]['iconPath'],
                              height: 100,
                              width: 100,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            categories[index]['name'],
                            style: TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    );
                  }),
            ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10,10,0,10),
              child: Text(
                "Slots",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),),
            ), Container(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset(
                              categories[index]['iconPath'],
                              height: 100,
                              width: 100,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            categories[index]['name'],
                            style: TextStyle(color: Colors.black,),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    );
                  }),
            ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10,10,0,10),
              child: Text(
                "Casino",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),),
            ), Container(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset(
                              categories[index]['iconPath'],
                              height: 100,
                              width: 100,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            categories[index]['name'],
                            style: TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    );
                  }),
            ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,10,0,10),
              child: Text(
                "Sports",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),),
            ), Container(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset(
                              categories[index]['iconPath'],
                              height: 100,
                              width: 100,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            categories[index]['name'],
                            style: TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    );
                  }),
            ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,10,0,10),
                  child: Text(
                    "Fishing",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.black
                    ),),
                ), Container(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  categories[index]['iconPath'],
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                categories[index]['name'],
                                style: TextStyle(color: Colors.black),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        );
                      }),
                ),
          ]),
        )));
  }

}
