
import 'package:flutter/material.dart';
import 'package:my_app/NavBar.dart';
import 'package:my_app/TaskerDashboard.dart';
import 'package:my_app/main.dart';
import 'package:my_app/LogIssue.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class TaskDetails extends StatelessWidget {

  List<Task> Tasks=[];
  Map mapResponse={};
  Map details={};
  int TaskId=716;
  var Tasker="sinrajat43@gmail.com";
  getTasks() async{
    var response = await http.get(Uri.https('virtusauk-dev.outsystemscloud.com', 'CrowdsourcingBackend/rest/Tasks/getTasks'));
    var jsonData = jsonDecode(response.body);
    mapResponse=jsonData;
    for(int u=0;u<mapResponse["tasklist"].length;u++){
      details=mapResponse["tasklist"][u];
      if(details["AdRater"]==Tasker && details["Id"]==TaskId){
        Task task1= Task ((details["Id"] ?? 0),
                          (details["NameOFTask"] ?? "No name"),
                          (details["Status"] ?? "No Status"),
                          (details["StartDate"] ?? "No StartDate"),
                          (details["EndDate"] ?? "No EndDate"),
                          (details["Priority"] ?? "No Priority"),
                          (details["WorkPercentage"] ?? 0),
                          (details["Bucket"] ?? "No Bucket"),
                          (details["Category"] ?? "No Category"),
                          (details["Description"] ?? "No Description"),
                          (details["Remarks"] ?? "No Remarks")

        );
        return task1;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    getTasks();
    return Scaffold(
        backgroundColor: Color(0xFFF1F7FE),
        drawer: NavDrawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title:const Text("Task Details",
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
                            MaterialPageRoute(builder: (context) => TaskerDashboard()),
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
                           Center(
                            child: Text(
                                "Testing",
                                style: const TextStyle(
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
                  height: 30.0,
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
                          margin: const EdgeInsets.only(top:2.0,right: 0.0,left: 0.0),

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
                        margin: const EdgeInsets.only(top:0.0,bottom: 20.0),
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
                  height: 90.0,
                  margin: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 9.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: const Color(0xFFFFFFFF),
                      boxShadow: const [BoxShadow(
                        color: Color(0xFF000000),
                        blurRadius: 1.0,
                      ),]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [

                      Container(
                          margin: const EdgeInsets.only(top:4.0,left: 5.0,right: 3.0,bottom: 0.0),
                          child: const Text(
                              "Description",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF333333),
                                  fontFamily: 'Roboto',
                                  fontWeight:FontWeight.bold)
                          )

                      ),
                      Container(
                          margin: const EdgeInsets.only(top:6.0,left: 5.0,right: 3.0,bottom: 0.0),
                          child: const Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ac dui eu augue finibus posuere. In mauris odio, malesuada id consectetur id, dictum ut nulla. Morbi mattis elit non lacus vehicul.",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF636366),
                                fontFamily: 'Roboto',
                              )
                          )
                      ),

                    ],
                  ),

                ),
                Container(
                    height: 130.0,
                    margin: const EdgeInsets.only(top:5.0,left: 8.0,right: 8.0,bottom: 0.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color(0xFFFFFFFF),
                        boxShadow: const [BoxShadow(
                          color: Color(0xFF000000),
                          blurRadius: 1.0,
                        ),]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [

                        Container(
                            margin: const EdgeInsets.only(top:10.0,left: 5.0,right: 3.0,bottom: 0.0),
                            child: const Text(
                                "Attachments",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF333333),
                                    fontFamily: 'Roboto',
                                    fontWeight:FontWeight.bold)
                            )

                        ),

                        Container(
                          height: 20.0,
                          margin: const EdgeInsets.only(top:9.0,left: 5.0,right: 3.0,bottom: 8.0),

                          child:ListView(
                            // This next line does the trick.
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[

                                Container(
                                    child:const Text(
                                        "Document1234.apk",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF387CE1),
                                          fontFamily: 'Roboto',
                                        )
                                    )
                                ),



                                Container(
                                    margin: const EdgeInsets.only(top:0.0,left: 125.0,right: 3.0,bottom: 0.0),
                                    child:
                                    Icon(Icons.phone_android_outlined ),
                                  ),
                                Container(
                                  margin: const EdgeInsets.only(top:0.0,left: 20.0,right: 3.0,bottom: 0.0),
                                  child:
                                  Icon(Icons.download ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top:0.0,left: 10.0,right: 3.0,bottom: 0.0),
                                  child:
                                  Icon(Icons.delete_outlined ),
                                ),



                              ]),



                        ),
                        Container(
                          height: 20.0,
                          margin: const EdgeInsets.only(top:6.0,left: 5.0,right: 3.0,bottom: 0.0),

                          child:ListView(
                            // This next line does the trick.
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[

                                Container(
                                    child:const Text(
                                        "Filesample12345.js",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF387CE1),
                                          fontFamily: 'Roboto',
                                        )
                                    )
                                ),



                                Container(
                                  margin: const EdgeInsets.only(top:0.0,left: 125.0,right: 3.0,bottom: 0.0),
                                  child:
                                  Icon(Icons.laptop_chromebook_outlined),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top:0.0,left: 20.0,right: 3.0,bottom: 0.0),
                                  child:
                                  Icon(Icons.download ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top:0.0,left: 10.0,right: 3.0,bottom: 0.0),
                                  child:
                                  Icon(Icons.delete_outlined ),
                                ),



                              ]),



                        ),
                        Container(
                          height: 20.0,
                          margin: const EdgeInsets.only(top:8.0,left: 5.0,right: 3.0,bottom: 0.0),

                          child:ListView(
                            // This next line does the trick.
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[

                                Container(
                                    child:const Text(
                                          "Supportdoc123.pdf",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF387CE1),
                                          fontFamily: 'Roboto',
                                        )
                                    )
                                ),



                                Container(
                                  margin: const EdgeInsets.only(top:0.0,left: 125.0,right: 3.0,bottom: 0.0),
                                  child:
                                  Icon(Icons.file_copy_outlined ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top:0.0,left: 20.0,right: 3.0,bottom: 0.0),
                                  child:
                                  Icon(Icons.download ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top:0.0,left: 10.0,right: 3.0,bottom: 0.0),
                                  child:
                                  Icon(Icons.delete_outlined ),
                                ),



                              ]),



                        ),
                      ],)
                ),
                Container(
                  height: 60.0,
                  margin: const EdgeInsets.only(top:12.0,left: 8.0,right: 8.0,bottom: 9.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: const Color(0xFFFFFFFF),
                      boxShadow: const [BoxShadow(
                        color: Color(0xFF000000),
                        blurRadius: 1.0,
                      ),]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [

                      Container(
                          margin: const EdgeInsets.only(top:4.0,left: 5.0,right: 3.0,bottom: 0.0),
                          child: const Text(
                              "Remarks",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF333333),
                                  fontFamily: 'Roboto',
                                  fontWeight:FontWeight.bold)
                          )

                      ),
                      Container(
                          margin: const EdgeInsets.only(top:6.0,left: 5.0,right: 3.0,bottom: 0.0),
                          child: const Text(
                              "Lorem ipsum dolor sit amet,.",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF636366),
                                fontFamily: 'Roboto',
                              )
                          )
                      ),

                    ],
                  ),

                ),
                Container(
                  height: 60.0,
                  margin: const EdgeInsets.only(top:12.0,left: 8.0,right: 8.0,bottom: 9.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: const Color(0xFFFFFFFF),
                      boxShadow: const [BoxShadow(
                        color: Color(0xFF000000),
                        blurRadius: 1.0,
                      ),]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [

                      Container(
                          margin: const EdgeInsets.only(top:4.0,left: 5.0,right: 3.0,bottom: 0.0),
                          child: const Text(
                              "Issue Log List",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF333333),
                                  fontFamily: 'Roboto',
                                  fontWeight:FontWeight.bold)
                          )

                      ),
                      Container(
                          margin: const EdgeInsets.only(top:6.0,left: 5.0,right: 3.0,bottom: 0.0),
                          child: const Text(
                              "Lorem ipsum dolor sit amet,.",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF636366),
                                fontFamily: 'Roboto',
                              )
                          )
                      ),

                    ],
                  ),

                ),
                Container(
                  height: 80.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top:10.0,left: 15.0,right: 3.0,bottom: 0.0),
                          child: const Text(
                              "Work Percentage",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF333333),
                                  fontFamily: 'Roboto',
                                  fontWeight:FontWeight.bold)
                          )

                      ),
                      Container(
                          margin: const EdgeInsets.only(top:0.0,left: 5.0,right: 3.0,bottom: 0.0),
                          child: const MyStatefulWidget(),

                      ),

                    ],
                  ),
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
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LogIssue()),
                          );
                        },
                        child: Container(
                          width:104.0,
                          height: 40.0,
                          margin: const EdgeInsets.only(left:10.0,top:5.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF3F8CFF)),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: const Center(
                            child:  Text(
                                "Log an Issue",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF3F8CFF),
                                  fontFamily: 'Roboto',)
                            ),
                          ),

                        ),
                      ),
                      Container(
                          width:MediaQuery.of(context).size.width * 0.30,
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
                              "Submit",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'Roboto',)
                          ),
                        ),
                      ),

                    ],


                  ),

                ),
              ],
            ),
          )
        ),


        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            iconSize: 30.0,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: IconButton(icon:Icon(Icons.home),
                  onPressed:() {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LogIssue()),
                  );
                  }
                  ,
                  ),
                  label:''
              ),
              BottomNavigationBarItem(
                  icon: IconButton(icon:Icon(Icons.insert_drive_file_outlined),
                  onPressed:() {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LogIssue()),
                  );
                  }
                  ,
                  ),
                  label:''
              ),
              BottomNavigationBarItem(
                icon: IconButton(icon:Icon(Icons.stacked_bar_chart),
                  onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LogIssue()),
                    );
                  }
                  ,
                ),
                  label:''
              ),
              BottomNavigationBarItem(
                icon: IconButton(icon:Icon(Icons.person),
                  onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LogIssue()),
                    );
                  }
                  ,
                ),
                label:''
              ),
            ])//
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      max: 100,
      divisions: 5,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  }
}


class Task{
  final String NameOFTask, Status,Priority, StartDate,EndDate, Bucket,Category,Description,Remarks;
  final int Id,WorkPercentage;
  Task(this.Id, this.NameOFTask, this.Status, this.StartDate,this.EndDate,
      this.Priority, this.WorkPercentage,this.Bucket,this.Category,this.Description,this.Remarks);
}