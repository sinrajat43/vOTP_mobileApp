
import 'package:http/http.dart' as http;
import 'dart:convert';

class getTask {
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
}
class Task{
  final String NameOFTask, Status;
  Task(this.NameOFTask,this.Status);
}