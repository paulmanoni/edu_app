import 'package:flutter/material.dart';

import 'Resources.dart';

class Subjects extends StatefulWidget {
  @override
  _SubjectsState createState() => _SubjectsState();
}

class _SubjectsState extends State<Subjects> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                height: 200,
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(45),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage(
                          "assets/1.jpg",
                        ),
                      )),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                    icon: Icon(Icons.arrow_back, color: Colors.white,),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    })
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              "All Subjects",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  letterSpacing: 1.9,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Please select a study subject",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xffE1F5FF),
                                  fontSize: 18,
                                  letterSpacing: 1.9,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 30.0,
                  ),
                ]),
                margin: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                height: 50,
                child: new TextField(
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(
                          right: 4.0, top: 2, bottom: 2, left: 2.0),
                      child: SizedBox(
                        width: 50.0,
                        child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            color: Color.fromRGBO(6, 44, 76, 1),
                            onPressed: () {},
                            child: Center(
                              child: Icon(
                                Icons.search,
                                size: 20,
                                color: Colors.white,
                              ),
                            )),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Search ',
                    hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.black45,
                        fontWeight: FontWeight.w600),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, int item) {
                return Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Design",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                letterSpacing: 1.9,
                                fontWeight: FontWeight.w700),
                          ),
                          FlatButton(
                            child: Text(
                              "See all",
                              style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 14,
                                  letterSpacing: 1.9,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 210,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            child: CourseCard(
                                "Figma Design", "24", "assets/1.jpg"),
                            onTap: () {},
                            borderRadius: BorderRadius.circular(15),
                          );
                        },
                      ),
                    )
                  ],
                );
              }, childCount: 5),
            ),
          ],
        ),
      ),
    );
  }
}
