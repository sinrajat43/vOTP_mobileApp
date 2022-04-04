import 'package:flutter/material.dart';
import 'package:my_app/NavBar.dart';

void main(){
  runApp(MaterialApp(
      title:"Sample App",
      home: HomePage(

      )
  ));
}
class HomePage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F7FE),
        drawer: NavDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title:const Text("Your Task",
          style: TextStyle(
            color: Color(0xFF0C145A),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle:true ,
        backgroundColor: Colors.transparent, shadowColor: Colors.transparent,
      ),
      body:Container(
        padding: const EdgeInsets.all(8.0),
        height: MediaQuery.of(context).size.height * 0.83,
        width: MediaQuery.of(context).size.width * 1.0,
        margin: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 40.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: const Color(0xFFFFFFFF),
            boxShadow: const [BoxShadow(
              color: Color(0xFF00001A),
              blurRadius: 5.0,
            ),]
        ),
        child: Column(
          children: <Widget>[
            Container(
                height: 60.0,
                width:MediaQuery.of(context).size.width * 1.0,
              decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  ),
              child:ListView(
            // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height:40.0,
                  width:MediaQuery.of(context).size.width * 0.7,
                  margin: const EdgeInsets.only(left:5.0,top:10.0),
                  decoration: BoxDecoration(
                      color:  Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: const [BoxShadow(
                        color: Color(0xFF00001A),
                        blurRadius: 5.0,
                      ),]
                  ),
                ),
                Container()
              ]
              ),
            ),
            Container(
                height: 2.0,
                margin: const EdgeInsets.only(top:18.0),
                color: const Color(0xFFE3E3E3),
            ),
            Container(
                height: 50.0,
                width:MediaQuery.of(context).size.width * 0.8,
                margin: const EdgeInsets.only(top:10.0,right: 40.0),
                decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                ),
              child:ListView(
                // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 8.0),
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                        child:ListView(
                            children: <Widget>[
                              Container(
                                height: 22.0,
                                margin: const EdgeInsets.only(left:15.0),
                                child:
                                    const Text(
                                        "Rajat Singh",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFF000000),
                                          fontFamily: 'Roboto',
                                            fontWeight:FontWeight.bold)
                                    )
                              ),
                              Container(
                                height: 18.0,
                                margin: const EdgeInsets.only(left:15.0,top: 4.0),
                                  child: const Text(
                                        "Tasker",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF000000),
                                            fontFamily: 'Roboto',
                                            fontWeight:FontWeight.bold)
                                    )
                              )
                            ]
                        )
                    )
                  ]
              )
            ),
            Container(
                height: 110.0,
                width:MediaQuery.of(context).size.width * 1.0,
                margin: const EdgeInsets.only(top:10.0,right: 8.0,left: 8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFF083454)
                ),
              child:ListView(
                // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width * 0.25,

                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.50,
                        margin: const EdgeInsets.only(right: 0.0,left: 15.0),
                        child:
                        const Center(
                            child: Text(
                                "You have completed a total of 15 tasks this month.",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFFFFFFFF),
                                    fontFamily: 'Roboto',)
                            )
                        ),
                    )
                  ]
              )

            ),
            Container(
                height: 67.0,
                width:MediaQuery.of(context).size.width * 1.0,
                margin: const EdgeInsets.only(top:20.0,right: 8.0,left: 8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFFFFFFFF),
                    boxShadow: const [BoxShadow(
                      color: Color(0xFF000000),
                      blurRadius: 1.0,
                    ),]
                ),
              child:ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.55,
                    child:
                      const Center(
                          child: Text(
                          "Build a responsive react App",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF333333),
                                  fontFamily: 'Roboto',
                                  fontWeight:FontWeight.bold)
                        )
                      )
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.24,
                    height:20.0,
                    margin: const EdgeInsets.only(top:20.0,bottom: 22.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0), color: Color(0xFF4E97D6),
                    ),
                      child:
                      const Center(
                          child: Text(
                              "APPROVED",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'Roboto',)
                          )
                      )
                  ),
                ],
              ),
            ),
            Container(
                height: 67.0,
                width:MediaQuery.of(context).size.width * 1.0,
                margin: const EdgeInsets.only(top:20.0,right: 8.0,left: 8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFFFFFFFF),
                    boxShadow: const [BoxShadow(
                      color: Color(0xFF000000),
                      blurRadius: 1.0,
                    ),]
                ),
              child:ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      child:
                      const Center(
                          child: Text(
                              "Create from react.js",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF333333),
                                  fontFamily: 'Roboto',
                                  fontWeight:FontWeight.bold)
                          )
                      )
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      height:20.0,
                      margin: const EdgeInsets.only(top:20.0,bottom: 22.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0), color: Color(0xFFE8AE40),
                      ),
                      child:
                      const Center(
                          child: Text(
                              "WIP",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'Roboto',)
                          )
                      )
                  ),
                ],
              ),
            ),
            Container(
                height: 67.0,
                width:MediaQuery.of(context).size.width * 1.0,
                margin: const EdgeInsets.only(top:20.0,right: 8.0,left: 8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFFFFFFFF),
                    boxShadow: const [BoxShadow(
                      color: Color(0xFF000000),
                      blurRadius: 1.0,
                    ),]
                ),
              child:ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      child:
                      const Center(
                          child: Text(
                              "Test Chain Reaction App",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF333333),
                                  fontFamily: 'Roboto',
                                  fontWeight:FontWeight.bold)
                          )
                      )
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      height:20.0,
                      margin: const EdgeInsets.only(top:20.0,bottom: 22.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0), color: Color(0xFF21A849),
                      ),
                      child:
                      const Center(
                          child: Text(
                              "DONE",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'Roboto',)
                          )
                      )
                  ),
                ],
              ),
            ),
            Container(
                height: 67.0,
                width:MediaQuery.of(context).size.width * 1.0,
                margin: const EdgeInsets.only(top:20.0,right: 8.0,left: 8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFFFFFFFF),
                    boxShadow: const [BoxShadow(
                      color: Color(0xFF000000),
                      blurRadius: 1.0,
                    ),]
                ),
              child:ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      child:
                      const Center(
                          child: Text(
                              "IOT device Testing",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF333333),
                                  fontFamily: 'Roboto',
                                  fontWeight:FontWeight.bold)
                          )
                      )
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      height:20.0,
                      margin: const EdgeInsets.only(top:20.0,bottom: 22.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0), color: Color(0xFF4E97D6),
                      ),
                      child:
                  const Center(
                    child: Text(
                      "APPROVED",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Roboto',)
                      )
                    )
                  ),
                ],
              ),
            ),
            Container(
                height: 67.0,
                width:MediaQuery.of(context).size.width * 1.0,
                margin: const EdgeInsets.only(top:20.0,right: 8.0,left: 8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFFFFFFFF),
                    boxShadow: const [BoxShadow(
                      color: Color(0xFF000000),
                      blurRadius: 1.0,
                    ),]
                ),
              child:ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      child:
                      const Center(
                          child: Text(
                              "Metaverse Ideathon",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF333333),
                                  fontFamily: 'Roboto',
                                  fontWeight:FontWeight.bold)
                          )
                      )
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      height:20.0,
                      margin: const EdgeInsets.only(top:20.0,bottom: 22.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0), color: Color(0xFF4E97D6),
                      ),
                    child:
                  const Center(
                      child: Text(
                          "APPROVED",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFFFFFFF),
                            fontFamily: 'Roboto',)
                      )
                  ),
                  ),
                ],
              ),
            ),
            Container(
                height: 2.0,
                margin: const EdgeInsets.only(top:15.0),
                color: const Color(0xFFE3E3E3)
            ),
          ],
        )
      ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
          iconSize: 30.0,
          items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_drive_file_outlined),
              label:""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart),
              label:""
          ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label:""
            ),
    ])//
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
