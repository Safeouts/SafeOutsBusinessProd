import 'package:flutter/material.dart';
import 'package:safeoutsbusinessprod/profile/SettingsPage.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SettingsPage()),
            ),
            child: Image.asset(
              "assets/images/logo.png",
            ),
          ),
        ),
        title: Text(''),
      ),
      body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 10, left: 20),
                      child: Text(
                          "Restaurant Name",
                          style: TextStyle(
                            fontSize: 20,
                          )
                      ),
                    ),
                    SizedBox(width: 40,),
                    Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(left: 60),
                      child: Image.asset(
                        "assets/images/logo.png",
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 10, left: 20),
                child: Text(
                    "Restaurant Address",
                    style: TextStyle(
                      fontSize: 17,
                    )
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 40),
                child: Text(
                    "Real time Occupancy",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 30),
                child: Text(
                    "17",
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Divider(
                height: 2,
                thickness: 2,
              ),
              SizedBox(
                child: Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 10, left: 20),
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Capacity % pre-covid",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              "27%",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 50,
                      margin: EdgeInsets.only(left: 10),
                      color: Colors.grey,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 8, left: 20),
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Capacity % after SOP",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              "27%",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                  height: 1,
                  thickness: 1)
            ],

          )
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home, color: Colors.teal,),
            title: new Text('Home'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.people),
            title: new Text('Staff'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.verified_user),
            title: new Text('Safety'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.account_circle),
            title: new Text('Profile'),
          ),
        ],
        // currentIndex: i,
        type: BottomNavigationBarType.fixed,
        // onTap: (index) {
        //   setState(() {
        //     i = index;
        //   });
        // },
      ),
    );
  }
}