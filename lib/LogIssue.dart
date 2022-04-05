import 'package:flutter/material.dart';
import 'package:my_app/NavBar.dart';
import 'package:my_app/TaskDetails.dart';
import 'package:my_app/main.dart';


class LogIssue extends StatelessWidget {
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
                          MaterialPageRoute(builder: (context) => TaskDetails()),
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
              Container()

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
