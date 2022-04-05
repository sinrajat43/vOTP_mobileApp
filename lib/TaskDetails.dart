import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/NavBar.dart';
import 'package:my_app/main.dart';


class TaskDetails extends StatelessWidget {
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
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                      );
                      },

                      child: Container(
                        width:MediaQuery.of(context).size.width * 0.1,
                        color: Color(0xFFFFFFFF),
                        child: Icon(Icons.arrow_back_ios,color: Colors.black,),

                      ),
                    ),
                    Container(
                      width:MediaQuery.of(context).size.width * 0.7,

                      color: Color(0xFFFFFFFF),
                        child:
                        const Center(
                          child: Text(
                              "Test Chain Reaction App",

                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFF000000),
                                  fontFamily: 'Roboto',
                                  fontWeight:FontWeight.bold)
                          ),
                        )
                    ),
                  ],


                ),
                ),
                  Container(
                    height: 50.0,
                    width:MediaQuery.of(context).size.width * 1.0,
                    margin: const EdgeInsets.only(top:0.0,right: 8.0,left: 8.0),

                    child:ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            margin: const EdgeInsets.only(top:7.0,right: 0.0,left: 0.0),

                                child: Text(

                                    "Task ID: #6600",
                                    style: TextStyle(

                                        fontSize: 14,
                                        color: Color(0xFF333333),
                                        fontFamily: 'Roboto',
                                        fontWeight:FontWeight.bold)
                                )

                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.24,
                          height:20.0,
                          margin: const EdgeInsets.only(top:0.0,bottom: 22.0),
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
                    height: 50.0,
                    width:MediaQuery.of(context).size.width * 1.0,
                    margin: const EdgeInsets.only(top:0.0,right: 8.0,left: 8.0),

                    child:ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                            width: MediaQuery.of(context).size.width * 0.50,
                            margin: const EdgeInsets.only(top:4.0,right: 0.0,left: 0.0),

                            child: Text(

                                "Start Date:30 Nov 2021",
                                style: TextStyle(

                                    fontSize: 12,
                                    color: Color(0xFF21A849),
                                    fontFamily: 'Roboto',
                                    fontWeight:FontWeight.bold)
                            )

                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.50,
                            margin: const EdgeInsets.only(top:4.0,right: 0.0,left: 0.0),

                            child: Text(

                                "End Date:30 Dec 2021",
                                style: TextStyle(

                                    fontSize: 12,
                                    color: Color(0xFFF91A1A),
                                    fontFamily: 'Roboto',
                                    fontWeight:FontWeight.bold)
                            )

                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width:MediaQuery.of(context).size.width * 0.8,
                    margin: const EdgeInsets.only(top:0.0,right: 8.0,left: 8.0),

                    child:ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[

                        Container(
                          width: MediaQuery.of(context).size.width * 0.20,
                          height:20.0,
                          margin: const EdgeInsets.only(top:0.0,bottom: 22.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0), color: Color(
                              0xFFF91A1A),
                          ),
                          child:
                          const Center(
                              child: Text(
                                  "Priority: High",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFFFFFFF),
                                    fontFamily: 'Roboto',)
                              )
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.30,
                          height:20.0,
                          margin: const EdgeInsets.only(top:0.0,left:5.0,bottom: 22.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0), color: Color(
                              0xFF21A849),
                          ),
                          child:
                          const Center(
                              child: Text(
                                  "Completion %: 100",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFFFFFFF),
                                    fontFamily: 'Roboto',)
                              )
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.24,
                          height:20.0,
                          margin: const EdgeInsets.only(top:0.0,left:5.0,bottom: 22.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0), color: Color(
                              0xFFC4C4C4),
                          ),
                          child:
                          const Center(
                              child: Text(
                                  "Bucket: Average",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF000000),
                                    fontFamily: 'Roboto',)
                              )
                          ),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 100.0,
                    margin: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 0.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color(0xFFFFFFFF),
                        boxShadow: const [BoxShadow(
                          color: Color(0xFF000000),
                          blurRadius: 1.0,
                        ),]
                    ),
                    child: Column(
                      children: [
                        Container(


                            child: const Text(
                                "Description",

                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF333333),
                                    fontFamily: 'Roboto',
                                    fontWeight:FontWeight.bold)
                            )
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 5.0,right: 3.0,bottom: 0.0),
                            child: const Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ac dui eu augue finibus posuere. In mauris odio, malesuada id consectetur id, dictum ut nulla. Morbi mattis elit non lacus vehicul.",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF636366),
                                    fontFamily: 'Roboto',
                                    )
                            )
                        )
                      ],
                    ),
                  )

                ],
              ),
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