
import 'package:flutter/material.dart';
import 'package:my_app/NavBar.dart';
import 'package:my_app/TaskDetails.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class TaskerDashboard extends StatelessWidget {
  List<Task> Tasks=[];
  Map mapResponse={};
  Map details={};
  var Tasker="sinrajat43@gmail.com";
  getTasks() async{
    var response = await http.get(Uri.https('virtusauk-dev.outsystemscloud.com', 'CrowdsourcingBackend/rest/Tasks/getTasks'));
    var jsonData = jsonDecode(response.body);
    mapResponse=jsonData;

    for(int u=0;u<mapResponse["tasklist"].length;u++){
      details=mapResponse["tasklist"][u];
      if(details["AdRater"]==Tasker){
        Task task1= Task ((details["NameOFTask"]==""?"No name":details["NameOFTask"]),(details["Status"]==""?"No Status":details["Status"]));
        Tasks.add(task1);
      }
    }
    print(Tasks[1].NameOFTask);
    return Tasks;
  }

  @override

  Widget build(BuildContext context) {
    getTasks();
    AssetImage image = AssetImage('images/trophy.png');
    Image trophy = Image(image: image, width: 400, height: 400);
    return Scaffold(
        backgroundColor: Color(0xFFF1F7FE),
        drawer: NavDrawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title:const Text("Tasker Dashboard",
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
                  color: Color(0x1A000000),
                  blurRadius: 20.0,
                  offset: Offset(0.0,4.0),
                ),]
            ),
            child: SingleChildScrollView(
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
                            alignment:Alignment.centerRight,
                            height:40.0,
                            width:MediaQuery.of(context).size.width * 0.7,
                            margin: const EdgeInsets.only(left:5.0,top:10.0,right: 0.0),
                            padding: const EdgeInsets.only(right: 15.0),
                            decoration: BoxDecoration(
                                color:  Color(0xFFFFFFFF),
                                border: Border.all(color: Color(0xFFF1F7FE),
                                                    width:1.0),
                                borderRadius: BorderRadius.circular(30.0),
                                boxShadow: const [BoxShadow(
                                  color: Color(0x1A000000),
                                  blurRadius: 0.0,
                                  offset: Offset(0.0,4.0),
                                ),]
                            ),
                            child: Icon(Icons.search,size:30.0)
                          ),
                          Container(
                            width:55.0,
                            margin: const EdgeInsets.only(top:10.0,left:10.0,right: 0.0),
                            padding: const EdgeInsets.only(left: 0.0),
                            decoration: BoxDecoration(
                                color:  Color(0xFFFFFFFF),
                                border: Border.all(color: Color(0xFFF1F7FE),
                                    width:1.0),
                                borderRadius: BorderRadius.circular(30.0),
                                boxShadow: const [BoxShadow(
                                  color: Color(0x1A000000),
                                  blurRadius: 0.0,
                                  offset: Offset(0.0,4.0),
                                ),]
                            ),
                            child: Icon(Icons.notifications_none_outlined,size:35.0),
                          )
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
                              child:Icon(Icons.person,size: 50.0,)
                            ),
                            Container(
                                margin: const EdgeInsets.only(top: 3.0),
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
                              child:trophy,
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
                      height: 500.0,
                      width:MediaQuery.of(context).size.width * 1.0,
                      margin: const EdgeInsets.only(top:20.0),
                      child:ListView.builder(
                          itemCount: Tasks.length,
                          itemBuilder: (BuildContext context,int index){
                            return GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => TaskDetails()),
                                );
                              },
                              child: Container(
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
                                        Center(
                                            child: Text(
                                                Tasks[index].NameOFTask,
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
                                        borderRadius: BorderRadius.circular(4.0), color:
                                        (Tasks[index].Status=="APPROVED"?Color(0xFF4E97D6):
                                        Tasks[index].Status=="WIP"?Color(0xFFE8AE40):
                                        Tasks[index].Status=="DONE"?Color(0xFF21A849):
                                        Tasks[index].Status=="NEW"?Color(0xFFEE0B5A):Color(0xFF000000)),
                                      ),
                                      child:
                                      Center(
                                          child: Text(
                                              Tasks[index].Status,
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: (Color(0xFFFFFFFF)),
                                                fontFamily: 'Roboto',)
                                          )
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                            //return ListTile(
                            //   trailing: Text("GFG",
                            //   style: TextStyle(
                            //      color: Colors.green,fontSize: 15),),
                            //title:Text("List item $index")
                            //);
                          }
                        // This next line does the trick.
                      )
                  ),
                  Container(
                      height: 2.0,
                      margin: const EdgeInsets.only(top:15.0),
                      color: const Color(0xFFE3E3E3)
                  ),

                ],
              ),
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

class Task{
  final String NameOFTask, Status;
  Task(this.NameOFTask,this.Status);
}