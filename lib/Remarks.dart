import 'package:flutter/material.dart';
import 'package:my_app/NavBar.dart';
import 'package:my_app/TaskDetails.dart';
import 'package:my_app/LogIssue.dart';


class Remarks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF1F7FE),
        drawer: NavDrawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title:const Text("Issue Log",
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: 36.0,
                  margin: const EdgeInsets.only(top:10.0),
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
                          width:194.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFDDE7F1),
                            borderRadius: BorderRadius.circular(72.0),
                          ),
                          child:ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => LogIssue()),
                                    );
                                  },
                                  child: Container(
                                    width:97.0,
                                    margin: const EdgeInsets.only(top:0.0),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFDDE7F1),
                                      borderRadius: BorderRadius.circular(72.0),
                                    ),
                                    child: const Center(
                                      child: Text(
                                          "Log Issue",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF000000),
                                            fontFamily: 'Roboto',)
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:97.0,
                                  margin: const EdgeInsets.only(top:0.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF387CE1),
                                    borderRadius: BorderRadius.circular(72.0),
                                  ),
                                  child: const Center(
                                    child: Text(
                                        "Remarks",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFFFFFFFF),
                                          fontFamily: 'Roboto',)
                                    ),
                                  ),

                                ),
                              ]
                          )

                      ),

                      Container(
                          alignment: Alignment.centerRight,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child:Container(
                              width:56.0,
                              margin: const EdgeInsets.only(right:10.0,top: 2.0,bottom: 2.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFF3F8CFF)),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child:ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Container(
                                        margin: const EdgeInsets.only(left:5.0),
                                        child:Icon(Icons.edit,color: Colors.black,size: 14.0,)
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left:5.0),
                                      child: const Center(
                                        child: Text(
                                            "Edit",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF3F8CFF),
                                              fontFamily: 'Roboto',)
                                        ),
                                      ),

                                    ),
                                  ]
                              )
                          )
                      )
                    ],


                  ),
                ),
                Container(
                  height:36.0,
                    margin: const EdgeInsets.only(left: 8.0,right: 8.0,top: 20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0), color: const Color(0xFFF1F1F1)
                    ),
                    child:Container(
                      margin: const EdgeInsets.only(left: 8.0,right: 20.0),
                      child:const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                            "Lorem ipsum",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xFF000000),
                              fontFamily: 'Roboto',)
                        ),
                      )
                    )

                ),
                Container(
                    height:36.0,
                    margin: const EdgeInsets.only(left: 8.0,right: 8.0,top: 20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0), color: const Color(0xFFDDE7F1)
                    ),
                    child:Container(
                        margin: const EdgeInsets.only(left:20.0,right: 20.0),
                        child:const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "Lorem ipsum",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFF000000),
                                fontFamily: 'Roboto',)
                          ),
                        )
                    )

                ),
                Container(
                    height:64.0,
                    margin: const EdgeInsets.only(left: 8.0,right: 8.0,top: 20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0), color: const Color(0xFFF1F1F1)
                    ),
                    child:Container(
                        margin: const EdgeInsets.only(left: 8.0,right: 20.0,top:10.0),
                        child:const Align(
                          alignment: Alignment.topRight,
                          child: Text(
                              "Lorem ipsum",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFF000000),
                                fontFamily: 'Roboto',)
                          ),
                        )
                    )

                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8.0,right: 8.0,top: 20.0),
                  height: 40.0,
                  width:MediaQuery.of(context).size.width * 1.0,
                  alignment: Alignment.centerRight,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                  ),
                  child:ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width:MediaQuery.of(context).size.width * 0.35,
                        height: 40.0,
                      ),
                      Container(
                        width:MediaQuery.of(context).size.width * 0.2,
                        height: 40.0,
                        margin: const EdgeInsets.only(top:5.0),
                        decoration: BoxDecoration(
                          color: Color(0xFF3F8CFF),
                          border: Border.all(color: Color(0xFFCBD4DF)),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: const Center(
                          child: Text(
                              "Save",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'Roboto',)
                          ),
                        ),
                      ),
                      Container(
                        width:MediaQuery.of(context).size.width * 0.2,
                        height: 40.0,
                        margin: const EdgeInsets.only(left:10.0,top:5.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF3F8CFF)),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: const Center(
                          child:  Text(
                              "Cancel",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF3F8CFF),
                                fontFamily: 'Roboto',)
                          ),
                        ),

                      ),
                    ],


                  ),

                ),

              ],
            ),
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
