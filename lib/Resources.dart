import 'package:edu_app/recently.dart';
import 'package:edu_app/subjects.dart';
import 'package:flutter/material.dart';

class Resources extends StatelessWidget {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 300,
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
                              SizedBox(
                                height: 108,
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
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 30.0,
                    ),
                  ]),
                  margin: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                  height: 50,
                  child: new TextField(
                    controller: _controller,
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
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "All Subjects",
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
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Subjects()));
                        },
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
                        child: CourseCard("Figma Design", "24", "assets/1.jpg"),
                        onTap: () {},
                        borderRadius: BorderRadius.circular(15),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Recently Viewed",
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
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(0.0),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Recently();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title, count, imagePath;

  CourseCard(
    this.title,
    this.count,
    this.imagePath,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 140.0,
            width: 250.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(24),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 15.0,
                      offset: Offset(0.75, 0.95))
                ],
                color: Colors.grey),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              '$title',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.9,
                  fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
